# 7. Implement the following code in Ruby: Create a module called HelperMethods that include a method called `titleize` that does the following: it takes in a string and returns the string back after capitalizing each word in that string. For example if you pass to the method a string "hello world" you should get back "Hello World". The methods should not capitalize the following words: in, the, of, and, or, from.
module HelperMethods
  def titleize(s)
    a = s.split(" ")
    a.each do |word|
      if word != "in" && word != "the" && word != "of" && word != "and" && word != "or" && word != "from"
        word.capitalize!
      end
    end
    a.join(" ")
  end
end
