# find . -name "*.synctex.gz" -type f -delete;
# find . -name "*.aux" -type f -delete;
# find . -name "*.out" -type f -delete;
# find . -name "*.log" -type f -delete;

values=$(find . -type f \( -iname \*.aux -o -iname \*.synctex.gz -o -iname \*.out -o -iname \*.log \)  );
echo "Files to be removed";
for i in $values; 
do
    echo "$i"
done

read -r -p "Are you sure? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    rm $values
else
    echo "Exit"
fi
