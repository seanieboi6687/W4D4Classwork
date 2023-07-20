def my_min(list)
    min = list[0]
    list.each.with_index do |ele1, index1|
      list.each.with_index do |ele2, index2|
        if index2 > index1 
            if ele1 < ele2  && ele1 < min 
                min = ele1 
            end 
            if ele2 < ele1 && ele2 < min 
                min = ele2
            end 
        end
     end 
    end  
return min 
        
end 

def my_min2(list)
    min = list[0]
    list.each do |ele|
        if ele < min 
            min = ele 
        end 
    end 
    return min
end 



list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
my_min(list)  # =>  -5

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
my_min2(list)  # =>  -5

def largest_contiguous_subsum(list)
    newarr = []

    i = 0
    while i < list.length
        list.each_with_index do |ele, idx|
            if idx >= i
                newarr << list[i..idx]
            end
        end
        i += 1
    end

    sum_arr = []

    newarr.each do |subarr|
        sum_arr << subarr.sum
    end

    sum_arr.sort!
    return sum_arr[-1]
end

def largest_contiguous_subsum2(list)
    
    list.inject(0) {|acc, ele| acc += ele if (acc + ele) > acc} 
    
end 

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8