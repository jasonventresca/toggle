#!/usr/bin/env sh
# @brief:  toggle between two versions of a file (suffixed with .$extension_A and.$extension_B)
# @usage:  toggle extension_A extension_B file1 [file2, file3, ...]
#          '--> this enables extension_A and disables extension_B

# grab command line args
extension_A=$1
extension_B=$2
shift
shift
files=$@

# toggle each file
for file in $files; do
    # backup all possible versions of the file first, if not already backed up
    files_to_backup="$file $file.$extension_A $file.$extension_B"
    for file_to_backup in $files_to_backup; do
        if [ -f $file_to_backup ] && [ ! -f $file_to_backup.bak ]; then
            echo "backup: $file_to_backup --> $file_to_backup.bak"
            cp $file_to_backup $file_to_backup.bak
        fi
    done

    echo "enable: $file.$extension_A / disable: $file.$extension_B"
    mv $file $file.$extension_B
    mv $file.$extension_A $file
    echo "--"
done

echo "--toggle complete--"

