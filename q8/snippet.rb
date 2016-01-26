require "./blog.rb"

class Snippet < Blog::Article
  attr_accessor :body

  def body=(s)
    @body = s
    if @body.length > 100
      @body = @body[0..100] + "..."
    end
  end

  def initialize(title, body)
    self.title = title
    self.body = body
  end
end

# test
# snippet = Snippet.new("this is the way step inside", "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# p "inside snippet: " + snippet.title
# p "inside snippet: " + snippet.body
