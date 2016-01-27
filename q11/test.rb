# my answer for q7
def titleize_mutation(s)
  a = s.split(" ")
  a.each do |word|
    if word != "in" && word != "the" && word != "of" && word != "and" && word != "or" && word != "from"
      word.capitalize!
    end
  end
  a.join(" ")
end

# my answer for q11
def titleize_sans_mutation(s)
  # i'm still working on my regexp skills :) the site you showed me helped out alot:
  # http://rubular.com/r/jNkH4vlwEC <- my permalink where i worked out the logic
  # it was a little tricky to get rid of the partial matches for the excluded words
  # ie. "in" and not "inside".  I also wanted to upcase the first character of the
  # title, even if it was an excluded word, ie. "the witch and the wardrobe", shoudn't
  # print "the Witch and the Wardrobe", it should print "The Witch and the Wardrobe"
  # i also decided to downcase the string for weird title entries like:
  # "this is the way steP inSide" and "IT WAS THE BEST OF TIMES"
  s.downcase.gsub(/(^(?!.in).)|(^(?!.the).)|(^(?!.of).)|(^(?!.and).)|(^(?!.or).)|(^(?!.from).)|\b(?!\bin\b)(?!\bthe\b)(?!\bof\b)(?!\band\b)(?!\bor\b)(?!\bfrom\b)[a-z]/) {

    # i initially used a variable "c" to upcase...
    # |c| c.upcase

    # but then found this gem :)
    # $& is the string that was matched by the last successful regex
    $&.upcase
  }
end

# test
p titleize_sans_mutation("this is the way steP inSide")
p titleize_sans_mutation("the lion, witch and the wardrobe")
p titleize_sans_mutation("adventures of huckleberry finn")
p titleize_sans_mutation("fear and loathing in las vegas")
p titleize_sans_mutation("in or out")
p titleize_sans_mutation("from me to you")
p titleize_sans_mutation("IT WAS THE BEST OF TIMES")
