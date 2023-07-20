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



p second_anagram?("gizmo", "sally")
p second_anagram?("elvis", "lives")
