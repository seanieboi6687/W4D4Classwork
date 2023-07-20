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
# p first_anagram?("gizmo", "sally")
# p first_anagram?("elvis", "lives")

