require_relative '../ruby'


describe 'ary_add' do
  it "takes an array of integers and adds 2 elements at a time in order and returns an array" do
    ary_num = [1,2,4,3,6,2,3]
    expect(ary_add(ary_num)).to eq [3,7,8,3]
  end 
end 

describe 'swap' do 
  it "swaps two varibles without using a 3rd operator" do 
    ary = [1,2,3,4]
    expect(swap(ary)).to eq [4,2,3,1]
  end 
end 

describe 'palindrome_match?' do 
  it "returns true if a string is a palindrome of a 2nd string." do
    str1 = "noon"
    str2 = "noon"
    expect(palindrome_match?(str1, str2)).to eq true
  end 

  it "returns false if a string is not a palindrome of a 2nd string." do
    str1 = "noon"
    str2 = "boob"
    expect(palindrome_match?(str1, str2)).to eq false
  end 
end 