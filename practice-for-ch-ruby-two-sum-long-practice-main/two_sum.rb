def two_sum?(arr, target_sum)

    arr.each_with_index do |num1, idx1|
        arr.each_with_index do |num2, idx2|
            if idx2 > idx1 && num1 + num2 == target_sum
                return true
            end
        end
    end

    return false
end

def okay_two_sum(arr, target_sum)
newarr = arr.sort 

i = 0 

    while i < newarr.length - 2 
        if newarr[i] + newarr[i+1] == target_sum 
            return true 
        end 
        i += 1 
    end 
    return false 
end 

def hash_map?(arr, target_sum)
    hash = Hash.new()

    arr.each do |ele|
        hash[ele] = target_sum - ele
        if hash[target_sum-ele] == ele && (target_sum - ele) != ele
            return true 
        end 
    end
   return false 
end

arr = [0, 1, 5, 7]
p hash_map?(arr, 6) # true 
p hash_map?(arr, 10) # false 
