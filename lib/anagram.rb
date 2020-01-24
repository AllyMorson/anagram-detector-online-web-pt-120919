#write a program that, given a word and a list of possible anagrams, selects the correct one(s).

#e,g listen = Anagram.new("listen")
#listen.match(%w(enlists google inlets banana))
 
class Anagram 
  attr_accessor :name 
  
  def initialize(word)
    @name = word 
  end   
  
  #match method takes an array of possible anagrams. It should return all matches in an array.
  
   def match(array)
    array.select {|x| x.split("").sort == @name.split("").sort}
  end   

end 