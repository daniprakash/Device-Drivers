echo "Enter the Total numbers :"
read NoofUsers
echo "No of users are: $NoofUsers"
 
echo "Enter numbers:"
i=0 
  
while [ $i -lt $NoofUsers ] 
do
    read a[$i] 
    i=`expr $i + 1` 
done
  
echo "Output :"
for i in "${a[@]}"
do
    echo $i  
done

bubble_sort() {
	echo "Running bubble sort on the array"

	for (( i = 0; i < $NoofUsers; i++ ))
	do
		for (( j = $i; j < $NoofUsers; j++ ))
		do
			if [ ${a[$i]} -gt ${a[$j]}  ]; then
				temp=${a[$i]}
				a[$i]=${a[$j]}
				a[$j]=$temp
			fi
		done
	done

	echo "Sorted Array Elements are: "
	echo "${a[*]}"
}

insertion_sort() {
	echo "Running insertion sort on the array"

	for((i=1;i<NoofUsers;i++))
	do
		j=$i-1
		temp=${a[$i]}
		while((j>=0 && a[j]>temp))
		do
			a[$j+1]=${a[$j]}
			j=$j-1
		done
		a[j+1]=$temp
	done


	echo "Sorted Array Elements are: "
	echo "${a[*]}"
}

selection_sort() {
	echo "Running selection sort on the array"

	for((i=0;i<NoofUsers-1;i++))
	do
		small=${a[$i]}
		index=$i
		for((j=i+1;j<NoofUsers;j++))
		do
			if((a[j]<small))
			then
				small=${a[$j]}
				index=$j
			fi
		done
		temp=${a[$i]}
		a[$i]=${a[$index]}
		a[$index]=$temp
	done

	echo "Sorted Array Elements are: "
	echo "${a[*]}"
}


echo "SORTING ALGORITHMS"
echo "1. Bubble Sort"
echo "2. Insertion Sort"
echo "3. Selection Sort"

echo "Enter number for selecting sorting algorithm"
read Selected
echo "Selected number is $Selected"

case "$Selected" in
   "1") 
	bubble_sort
   ;;
   "2")
	insertion_sort
   ;;
   "3") 
	selection_sort
   ;;
esac
