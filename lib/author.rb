class Author 
  
  attr_accessor :name 

  def initialize(name)
    @name = name 
  end 
  
  def posts
    Posts.all.select do |Post|
      post.author == self
    end 
  end 
  
  def add_post(post)
   post.author = self 
  end 
  
  def add_post_by_title(post_title)
    writer = Post.new(post_title)
    add_post(singer)
  end 
  
  def self.song_count
    Song.all.count
  end 
  

end 