import os
from PIL import Image

img_dir = os.path.join(os.path.dirname(__file__), 'img')

def convert_dir(directory):
    for root, dirs, files in os.walk(directory):
        for f in files:
            ext = os.path.splitext(f)[1].lower()
            if ext in ['.jpg', '.jpeg', '.png']:
                src_path = os.path.join(root, f)
                dest_path = os.path.splitext(src_path)[0] + '.webp'
                
                try:
                    with Image.open(src_path) as img:
                        # Convert RGBA/P images to RGB/RGBA as needed
                        if img.mode in ('RGBA', 'LA') or (img.mode == 'P' and 'transparency' in img.info):
                            img = img.convert('RGBA')
                        else:
                            img = img.convert('RGB')
                        
                        img.save(dest_path, 'WEBP', quality=85, optimize=True)
                        print(f"Converted: {src_path} -> {dest_path}")
                except Exception as e:
                    print(f"Error converting {src_path}: {e}")

if __name__ == '__main__':
    print("Starting WebP conversion via Python PIL...")
    if os.path.exists(img_dir):
        convert_dir(img_dir)
        print("Conversion finished.")
    else:
        print(f"Image directory not found: {img_dir}")
