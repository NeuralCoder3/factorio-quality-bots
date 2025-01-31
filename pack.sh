Files=$(git ls-files | grep -v -E "(pack.sh|ReadMe.md|\.gitignore|\.gitmodules|\.git)")
Folder=$(basename $(pwd))

# we want an additional folder in the zip as seems to be the norm
mkdir "$Folder"
cp --parents $Files "$Folder"
rm -rf "$Folder.zip"
zip -r "$Folder.zip" "$Folder"
rm -rf "$Folder"