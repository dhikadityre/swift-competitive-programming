#!/usr/bin/env python3
import os
import re

# Paths
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
README_PATH = os.path.join(BASE_DIR, 'README.md')
PAGES_DIR = os.path.join(BASE_DIR, 'Pages')

def get_page_number_and_name(folder_name):
    # Matches patterns like "01-Two-Sum.xcplaygroundpage" or "03.xcplaygroundpage"
    match = re.match(r'^(\d+)(?:-(.*))?\.xcplaygroundpage$', folder_name)
    if match:
        num = int(match.group(1))
        name = match.group(2)
        if name:
            name = name.replace('-', ' ')
        else:
            name = f"Problem {num}"
        return num, name
    return None, None

def get_title_from_readme(page_folder):
    readme_path = os.path.join(PAGES_DIR, page_folder, 'Resources', 'README.md')
    if os.path.exists(readme_path):
        with open(readme_path, 'r', encoding='utf-8') as f:
            for line in f:
                if line.startswith('# '):
                    return line.strip('# \n\t')
    return None

def parse_existing_table(readme_content):
    existing_rows = {}
    lines = readme_content.split('\n')
    for line in lines:
        if not line.strip().startswith('|'):
            continue
        parts = [p.strip() for p in line.split('|')]
        # A valid row looks like: | # | Problem | Difficulty | Category | Solution | Writeup |
        # In the old format: | # | Problem | Difficulty | Solution | Writeup |
        if len(parts) >= 7 and parts[1].isdigit():
            num = int(parts[1])
            problem_cell = parts[2]
            difficulty = parts[3]
            
            # Extract category (or default to None if using the old 5-column format)
            if len(parts) == 7:
                category = None
            else:
                category = parts[4]
            
            # Extract title and link
            title_match = re.match(r'^\[([^\]]+)\]\(([^)]+)\)$', problem_cell)
            if title_match:
                title = title_match.group(1)
                link = title_match.group(2)
            else:
                title = problem_cell
                link = ""
                
            existing_rows[num] = {
                'num': num,
                'title': title,
                'link': link,
                'difficulty': difficulty,
                'category': category
            }
    return existing_rows

def main():
    if not os.path.exists(README_PATH):
        print(f"Error: README.md not found at {README_PATH}")
        return

    with open(README_PATH, 'r', encoding='utf-8') as f:
        readme_content = f.read()

    # Parse existing rows to preserve manual updates (difficulty, custom links)
    existing_rows = parse_existing_table(readme_content)

    # Scan Pages directory
    if not os.path.exists(PAGES_DIR):
        print(f"Error: Pages directory not found at {PAGES_DIR}")
        return

    pages = []
    for item in os.listdir(PAGES_DIR):
        if item.endswith('.xcplaygroundpage'):
            num, fallback_name = get_page_number_and_name(item)
            if num is not None:
                title = get_title_from_readme(item) or fallback_name
                pages.append({
                    'num': num,
                    'folder': item,
                    'title': title
                })

    # Sort pages numerically
    pages.sort(key=lambda x: x['num'])

    DEFAULT_CATEGORIES = {
        1: "Arrays & Hashing",
        2: "Arrays & Hashing",
        3: "Arrays & Hashing",
        4: "Arrays & Hashing",
        5: "Arrays & Hashing",
        6: "Two Pointers",
        7: "Two Pointers",
        8: "Sliding Window",
        9: "Stack",
        10: "Binary Search",
        11: "Sliding Window",
        12: "Sliding Window",
        13: "Stack",
        14: "Binary Search"
    }

    # Build new table rows
    table_rows = []
    for p in pages:
        num = p['num']
        folder = p['folder']
        title = p['title']
        code_link = f"Pages/{folder}/Contents.swift"
        writeup_link = f"Pages/{folder}/Resources/README.md"

        # If it already exists in the table, preserve its metadata (unless it was a placeholder)
        is_placeholder = num in existing_rows and existing_rows[num]['title'].startswith('Problem ') and not title.startswith('Problem ')
        
        if num in existing_rows and not is_placeholder:
            row_data = existing_rows[num]
            category = row_data.get('category') or DEFAULT_CATEGORIES.get(num, "Arrays & Hashing")
            row_line = f"| {num} | [{row_data['title']}]({row_data['link']}) | {row_data['difficulty']} | {category} | [Code]({code_link}) | [Writeup]({writeup_link}) |"
        else:
            # Create a new row or overwrite placeholder values
            slug = title.lower().replace(' ', '-')
            guessed_link = f"https://leetcode.com/problems/{slug}/"
            difficulty = "Easy"  # default placeholder
            category = DEFAULT_CATEGORIES.get(num, "Arrays & Hashing")
            row_line = f"| {num} | [{title}]({guessed_link}) | {difficulty} | {category} | [Code]({code_link}) | [Writeup]({writeup_link}) |"
            if is_placeholder:
                print(f"Updating placeholder page: #{num} -> {title}")
            else:
                print(f"Found new page: #{num} - {title}")

        table_rows.append(row_line)

    # Generate the table markdown block
    table_header = "| # | Problem | Difficulty | Category | Solution | Writeup |\n|---|---------|------------|----------|----------|---------|"
    table_body = "\n".join(table_rows)
    new_table_markdown = f"{table_header}\n{table_body}"

    # Replace the old table in the README
    section_pattern = re.compile(
        r'(## 📝 Solved Problems\s*\n\n)(.*?)(?=\n\n## |\Z)',
        re.DOTALL
    )

    if section_pattern.search(readme_content):
        updated_content = section_pattern.sub(
            rf'\1{new_table_markdown}',
            readme_content
        )
        with open(README_PATH, 'w', encoding='utf-8') as f:
            f.write(updated_content)
        print("README.md updated successfully!")
    else:
        print("Error: Could not find '## 📝 Solved Problems' section in README.md")

if __name__ == '__main__':
    main()
