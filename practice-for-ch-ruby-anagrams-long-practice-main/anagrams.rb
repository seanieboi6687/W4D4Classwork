def first_anagram?(str_1, str_2)
    newarr = []

    str_1.each_char.with_index do |char, idx|
        newarr << idx 
    end 

    stringarray = newarr.permutation.to_a
    finalarray = []

    stringarray.each do |subarray|
        tempstring = "" 
        subarray.each do |index|
           tempstring += str_1[index]
        end 
        finalarray << tempstring 
    end 

    finalarray.any? {|word| word == str_2}

end

def second_anagram?(str_1, str_2)
    array = [] 
    str_1.each_char do |char|
        array << char 
    end
    
    tempstring = ""

    i = 0 

    while i < str_2.length 
        if !array.include?(str_2[i])
            tempstring += str_2[i]
        end 
        i += 1
    end  

    tempstring.length == 0
end 

def third_anagram?(str_1, str_2)

    str_1.chars.sort == str_2.chars.sort
end

def fourth_anagram?(str_1, str_2)

count1 = Hash.new(0)
# count2 = Hash.new(0)

str_1.each_char do |char1|
    count1[char1] += 1 
end 

count1.each do |k, v|
    counter = 0 
    str_2.each_char do |char|
        if char == k 
            counter += 1 
        end 
    end 

    if count1[k] != counter 
        return false 
    end 
end 
return true 


# str_2.each_char do |char2|
#     count2[char2] += 1 
# end 

# count1 == count2 

end 

p fourth_anagram?("gizmo", "sally")
p fourth_anagram?("elvis", "lives")