##Split the incoming string into an array.
##Perform an each loop on the array, 
## array.each 
##For each element- is it an operator?  If yes, use equivalent of operator from hash and push to array
## elsif Number, push number into array.
##New array has numbers and operators
##Use eval

def calc_ruby(string)
  keyword_hash = {"add" => :+, "subtract" => :-, "multiply" => :*, "plus" => :+, 
    "minus" => :-, "power" => :**, "divide" => :/, "divided" => :/}
  calculate_array = []
  input_array = string.split(" ")
  input_array.each do |word|
    if keyword_hash.keys.include?(word)
      calculate_array << keyword_hash[word]
    elsif /\d/.match(word)
      calculate_array << word.to_f
    end
  end
  print eval(calculate_array.join)
end

calc_ruby("7 to the power of 10")
