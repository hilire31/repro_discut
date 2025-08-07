import sys
import re

files = sys.argv[1:]

total_json = ""

for file in files:
    with open(file, "r", encoding="utf-8") as f:
        file_content = "\n" + f.read().strip()

    # Clean the content
    file_content = re.sub(r'^\n?', '', file_content)
    file_content = re.sub(r'^\[\s*\n?', '', file_content)
    file_content = re.sub(r'\}\s*\n?\s*\]$', '},', file_content)

    total_json += "\n" + file_content

# Final cleanup
total_json = total_json.lstrip('\n')
total_json = re.sub(r',\s*$', '', total_json)
total_json = re.sub(r'\},\n\[\n\s*\{', '},\n   {', total_json)

#total_json1 = total_json+","

# Wrap it in a final array
print(f"[\n{total_json}\n]")

