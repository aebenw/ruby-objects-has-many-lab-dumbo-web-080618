class Post

  attr_accessor :name, :author

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(title)
    @@all << title
    @posts << title
    title.author = self
  end

  def title
    @name
  end

  def author=(new_name)
    @author = new_name
  end

  def author_name
    if self.author
      return author.name 
    end

  end




end
