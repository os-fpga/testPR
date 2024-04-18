BASE_DIR=$HOME/put_license
REPO_LIST="testlic1 testlic2 testlic3"
for repo in $REPO_LIST
do	
	echo "======================================="
	cd $BASE_DIR
	echo "$repo"
	gh repo clone $repo
	cd $(basename "$repo")
	base_b=`git branch --show-current`
	cp $BASE_DIR/LICENSE .
	git add LICENSE
	git commit -m "adding License file"
	git push origin --set-upstream $base_b:push_license
	gh pr create -B $base_b -H push_license -a nadeemyaseen-rs -r ravic-rs --title 'Pushing License' --body 'An automated PR to check in GPL license copy'
done

echo "Done"

# List directory contents
echo "Listing directory contents:"
ls

# Change directory (replace "target_dir" with the actual directory)
echo "Changing directory to target_dir (replace with actual name):"
cd target_dir
pwd  # Print current directory after the change

# Create a new directory (replace "new_dir" with the desired name)
echo "Creating a new directory called new_dir:"
mkdir new_dir

# Remove an empty directory (replace "empty_dir" with the actual name)
echo "Removing empty directory empty_dir (if it exists):"
rmdir empty_dir  # This will only work if the directory is empty

# Copy a file (replace "source" and "destination" with actual paths)
echo "Copying file from source to destination (replace paths):"
cp source destination

# Move/Rename a file (replace "source" and "destination" with actual paths)
echo "Moving/Renaming file from source to destination (replace paths):"
mv source destination

# Remove a file (replace "file_to_delete" with the actual filename)
echo "Removing file file_to_delete (use with caution!):"
rm file_to_delete  # Be very careful when using rm!

# Create an empty file (replace "new_file" with the desired name)
echo "Creating an empty file called new_file:"
touch new_file

# Display the contents of a file (replace "file_to_view" with the actual name)
echo "Viewing the contents of file_to_view (replace with actual name):"
cat file_to_view

echo "All commands completed!"


