# Define the star pattern for each character in "Radha" (राधा)
patterns = {
    'र': [
        "  *   ",
        " * *  ",
        "**  * ",
        " * *  ",
        "  *   ",
        "  *   ",
        "  *   ",
    ],
    'ा': [
        "     ",
        "     ",
        "***  ",
        "   * ",
        "***  ",
    ],
    'ध': [
        "**** ",
        "   * ",
        "**** ",
        "   * ",
        "**** ",
    ],
    'ह': [
        "*  * ",
        "*  * ",
        "**** ",
        "*  * ",
        "*  * ",
    ]
}

# Name to be printed
name = 'राधा'

# Each line of the pattern
output_lines = ['' for _ in range(max(len(pattern) for pattern in patterns.values()))]

# Build the pattern for each character and add it to the output lines
for char in name:
    pattern = patterns.get(char, [''])
    for i in range(len(output_lines)):
        output_lines[i] += pattern[i % len(pattern)] + '   '

# Print the complete pattern
for line in output_lines:
    print(line)
