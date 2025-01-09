# Convert webp to png
for webp_file in "./*.webp; do
    if [ -f "$webp_file" ]; then
        output_file="$(basename "${webp_file%.webp}").png"
        dwebp "$webp_file" -o "$output_file"
        echo "Converted: $webp_file to $output_file"
    fi
done

for webp_file in ./*.webp; do if [ -f "$webp_file" ]; then output_file="$(basename "${webp_file%.webp}").png"; dwebp "$webp_file" -o "$output_file"; echo "Converted: $webp_file to $output_file"; fi; done

# Convert jpg to png
find . -name "*.jpg" -exec mogrify -format png {} \; -exec rm {} \;
