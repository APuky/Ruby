def bubble_sort(array)
  while true
    swap=false
    index=1
    while index<=array.length()-1
      if array[index]<array[index-1]
        array[index],array[index-1]=array[index-1],array[index]
        index+=1
        swap=true
      else
        index+=1
      end
    end
  if !swap
    return array
  end
  end
end

p bubble_sort([4,3,78,2,0,2])
