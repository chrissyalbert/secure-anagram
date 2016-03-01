class Word < ActiveRecord::Base
    def self.find_anagrams(string)
    arr = string.split(//)
    arr_of_arrs = arr.permutation.to_a
        new_arr = []
    arr_of_arrs.each {
        |inner_arr|
        new_arr.push inner_arr.join
        } 
        anagrams = []
        new_arr.each { |combo|
            if Word.find_by_text(combo).present?
                anagrams << combo
            end
            }
        anagrams
        
    end

end