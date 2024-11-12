from PIL import Image, ImageDraw, ImageFont

def draw_text(text, font_path, output_file):
    # Create an image with white background
    image = Image.new('RGB', (800, 200), 'white')
    draw = ImageDraw.Draw(image)

    # Load a font
    font = ImageFont.truetype(font_path, 48)

    # Draw the text
    draw.text((10, 50), text, fill='black', font=font)

    # Save the image
    image.save(output_file)

text = 'राधा'
font_path = 'path/to/Devanagari/font.ttf'  # Specify the path to a Devanagari font file
output_file = 'radha.png'

draw_text(text, font_path, output_file)
