import os
from PIL import Image

images = [
    'img/local_seo.webp',
    'img/off_page_seo.webp',
    'img/on_page_seo.webp',
    'img/technical_seo.webp'
]

base_dir = os.path.dirname(os.path.abspath(__file__))

for rel_path in images:
    full_path = os.path.join(base_dir, rel_path)
    if os.path.exists(full_path):
        orig_size = os.path.getsize(full_path)
        with Image.open(full_path) as img:
            # Resize if dimensions are unnecessarily huge (> 1000px width)
            if img.width > 1000 or img.height > 1000:
                img.thumbnail((900, 900), Image.Resampling.LANCZOS)
            
            img.save(full_path, 'WEBP', quality=80, optimize=True)
        new_size = os.path.getsize(full_path)
        print(f"Optimized {rel_path}: {orig_size} -> {new_size} bytes ({(1 - new_size/orig_size)*100:.1f}% reduced)")
    else:
        print(f"File not found: {full_path}")
