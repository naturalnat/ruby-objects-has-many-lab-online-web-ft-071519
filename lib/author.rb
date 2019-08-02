class Author
  attr_accessor :name, :post, :title

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_post_by_title(title)
  post = Post.new(title)
  post.author = self
  end
end
