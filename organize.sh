#!/bin/bash

mkdir -p Documents Images Videos Musics Archives

for file in *; do
	if [[ "$file" == "organize.sh" ]]; then
		continue
	fi

	if [[ -f "$file" ]]; then
		ext="${file##*.}"
		echo  "File:$file, extention :$ext"
		case "$ext" in
			doc|docx|txt|pdf)
				mv "$file" Documents/ ;;
			jpg|jpeg|gif|png)
                                mv "$file" Images/ ;;
			mp4|avi|mkv|mov)
				mv "$file" Videos/ ;;
			mp3|wav|ogg|flac)
				mv "$file" Musics/ ;;
			zip|rar)
				mv "$file" Archives/ ;;
		esac
	fi
done

read -p "enter the first filename (tosearch and move to directory): " file1
found1=$(find . -type f -name "$file1" | head -n 1)
if [[ -n "$found1" ]]; then
	dirname=$(basename "$file1" | cut -d. -f1)
	mkdir -p "$dirname"
	mv "$found1" "$dirname/"
	echo "moved : $found1 to ./$dirname/"
else
	echo "file not found : $file1"
fi

read -p "enter the first filename (tosearch and remove) : " file2
found2=$(find . -type f -name "$file2" | head -n 1)
if [[ -n "$found2" ]]; then
	rm "$found2"
        echo "removed :$found2"
else
	echo "file not found : $file2"
fi

read -p "enter the first filename (tosearch and show details) : " file3
found3=$(find . -type f -name "$file3" | head -n 1)
if [[ -n "$found3" ]]; then
	echo "found : $found3"
	if [[ -s "$found3" ]]; then
		ls -lh "$found3"
	else
		echo " $found3 : empty"
	fi
else
	echo " file not found : $file3"
fi

echo "organization complete!"

