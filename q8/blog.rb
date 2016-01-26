require "./helper_methods.rb"

module Blog
  class Article
    include HelperMethods

    attr_accessor :title
    attr_accessor :body

    def title=(s)
      @title = titleize(s)
    end

    def initialize(title, body)
      self.title = title
      @body = body
    end
  end
end

# test
# article = Blog::Article.new("this is the way step inside", "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
# p "inside article: " + article.title
# p "inside article: " + article.body
