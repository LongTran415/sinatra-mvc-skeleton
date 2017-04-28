# - Swap 2 variables in ruby without using a 3rd operator
def swap(ary) 
  ary[0], ary[-1] = ary[-1], ary[0]
  return ary
end 

# - Given an array of numbers, add 2 elements at a time in 
#   order and return the resulting array. 
# ex: input = [1,2,4,3,6,2,3] output = [3,7,8,3]

def ary_add(array)
  if array.length.even?
    ary_couples = array.each_slice(2)
    final_ary = []
    ary_couples.each do |duo|
    ary_sum = duo[0] + duo[-1]
    final_ary << ary_sum  
    end
    return final_ary
  else
    last_obj = array.pop
    ary_couples = array.each_slice(2)
    final_ary = []
    ary_couples.each do |duo|
    ary_sum = duo[0] + duo[-1]
    final_ary << ary_sum 
      
    end
    return final_ary << last_obj
  end 
end 
 
#  - Find if a string is a palindrome of a 2nd string. 
#    Restrictions** Do better than 1 itteration through a string.
# input: noon, noon output: true


def palindrome_match?(str1, str2)
  # split the word in half to check if even
  # check if even check first half against second half reversed
  # return true if match 
  num_check = str1.length/2
  if num_check.even?
    ary_1 = str1.chars.each_slice(str1.length/2)
    ary_2 = str2.chars.each_slice(str2.length/2)
    return true if str1[0] == str2[0]
  end 
  false
end

# Write a function that takes an input string 
# and returns the minimum substring which contains 
# every letter of the alphabet set at least once.
   
#    Example:
#    Input: "aabbcb"
#    Alphabet: {'a', 'b', 'c'}
#    Output: "abbc"
   
#    Input: "aaaaaaaaaabbbbbbbbccccccccsbabbbccc"
#    Alphabet: {'a', 'b', 'c'}
#    Output: "csba"
   
#    Input: "aaaaaaaaaabbbbbbbbccccccccsbabbbccc"
#    Alphabet: {'a', 'b', 'c', 'f'}
#    Output: ""
   
#    Input: aaaabbbbbcacccc
#    Alphabet: {a, b, c}
#    Output: "bca"

