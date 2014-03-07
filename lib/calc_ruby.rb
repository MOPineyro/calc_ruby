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
  question = []
  # input_array = string.split(" ")
  input_array = string.scan(/[\w'\s]+/)
  
  input_array.each do |x| 
    x.split(" ") 
    question << x
    puts question.to_s + " here1 "
    puts input_array.to_s + " here2 "
    puts question.to_s + " here3 " 

    question.each do |word| 
      question = question.shift.split(" ")
      if keyword_hash.keys.include?(word)
        calculate_array << keyword_hash[word]
      elsif /\d/.match(word)
        calculate_array << word.to_f
      end
      puts question.join
    end
    puts eval(calculate_array.join)
  end
end

calc_ruby("What is 4 to the power of 4? What is 4 plus 4?")
