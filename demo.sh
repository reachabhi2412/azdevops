images=$(docker images | awk '{print $1}')
for i in $images;do
	echo "IMAGE NAME - $i"
done
