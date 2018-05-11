"""

Converts images to supported png format 
To use change the directory to the path containing all the class directories

"""

for i in dataset/*;
do
    for j in $i;
    do
    
        """
        works for linux based environment
        """
        
        mogrify -format png $j/*.pgm
        rm $j/*.pgm
    done
done
