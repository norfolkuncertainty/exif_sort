# exif_sort
Sorts files into directories based on exif data
```
#Example usage
# Find all jpg/jpeg files and sort them into directories in <current working directory>/<YEAR>/<MONTH>
find /home/user/photos -iname ".jp" -type f -exec exif_sort.sh {} \;
```
