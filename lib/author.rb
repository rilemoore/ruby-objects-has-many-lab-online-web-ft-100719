class Author
  
  attr_accessor :name, :posts
  
  @@total_posts = []
  
  def initialize(name)
    @name = name
    @posts = []
    @@total_posts << self
  end
  
  def add_post(post_name)
    post_name.author=(self) 
    @posts << post_name
    @@total_posts << post_name
  end
  
  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    add_post(new_post)
  end
  
  
  def self.post_count
    Post.all.count
    # count = 0

    # @@total_posts.each do |post_|
    #   puts post_.title
    #   count += 1
    # end
    # return count
  end
  
  
end