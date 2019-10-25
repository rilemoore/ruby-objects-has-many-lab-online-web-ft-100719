class Post
  
  attr_accessor :title, :author
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end
  
  def author_name
    if(@author)
      @author.name
    else
      nil
    end
  end
  
  def author=(author_name)
    @author = author_name
    author_name.posts << self
  end
  
  def all
    @@all
  end
  
end