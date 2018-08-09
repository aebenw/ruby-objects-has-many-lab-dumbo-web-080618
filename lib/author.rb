class Author

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @posts << self
  end

  def posts
    @posts
  end


  def add_post(title)
    @@all << title
    @posts << title
    title.author = self
  end

  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
    add_post(title)
  end

  def self.post_count
    @@all.count
  end


end
