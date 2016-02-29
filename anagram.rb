def find_anagram(string)
    arr = string.split(//)
    arr_of_arrs = arr.permutation.to_a
    new_arr = []
    arr_of_arrs.each {
        |inner_arr|
        new_arr.push inner_arr.join
        }
    new_arr
end