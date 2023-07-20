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
p my_min2(list)  # =>  -5