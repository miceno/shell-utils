while true; 
do 
ls -s $FILE; 
sleep 1; 
done | awk 'BEGIN{ previous=0;}{ current=$1; if(previous==0) previous=current; d=current-previous; previous=current; print d;}'
