art1 = """
  _____ 
 /     \\
| () () |
 \\  ^  /
  |||||
"""
art2 = """
  _____ 
 /     \\
|  0 0  |
 \\  ^  /
  |||||
"""

# Concatenate horizontally
combined_art = ""
lines1 = art1.split('\n')
lines2 = art2.split('\n')
for line1, line2 in zip(lines1, lines2):
    combined_art += line1 + "   " + line2 + "\n"

print(combined_art)

