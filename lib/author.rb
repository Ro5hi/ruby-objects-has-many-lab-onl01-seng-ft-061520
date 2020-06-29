require 'pry'
class Author 
  
  attr_accessor :name 

  def initialize(name)
    @name = name 
  end 
  
  def posts
    # binding.pry
    posts.all.select do |post|
      post.author == self
    end 
  end 
  
  def add_post(post)
   post.author = self 
  end 
  
  def add_post_by_title(post_title)
    writer = Post.new(post_title)
    add_post(writer)
  end 
  
  def self.post_count
    Post.all.count
  end 

end 