#!/bin/bash

displayprompt(){
echo "File Manager Menu: "
echo "1) Make a directory in the current working directory "
echo "2) Change working directory "
echo "3) Rename a file or directory "
echo "4) Delete a file or a directory (and its contents) "
echo "5) Copy a file " 
echo "0) Exit " 
echo 
echo "Current working directory:$PWD" 
echo
echo "What do you want to do? =====>"
}

makeDirectory(){
echo "What is the name of the new directory you wish to create in the current working directory? " 
read name
mkdir $name
}

changeDirectory(){
echo "What is the path of the directory you wish to change to? "
read newdirectory
cd $newdirectory
}

rename(){
echo "What is the name of the file/directory you wish to rename? "
read oldname
echo "What is the new name you wish the file/directory to have? " 
read newname 

mv $oldname $newname 
}

delete(){
echo "What is the name of the file or directory you wish to delete? " 
read deletethis
rm -r $deletethis
} 

copy(){
echo "What is the name of the file/directory you wish to copy? "
read copythis
echo "What is the new name of the file/directory you wish it to have?"
read newnameforcopy 
cp -r $copythis $newnameforcopy	
}

displayprompt

read response

while [ $response != 0 ]
do
	case "$response" in 
		1) makeDirectory
		;;	 
		2) changeDirectory
		;;
		3) rename
		;;
		4) delete
		;; 
 		5) copy
		;;
		*) exit
		;; 
	esac

displayprompt

read response
done
