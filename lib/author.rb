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

  def add_post(post)
    post.author = self 
  end

  def self.post_count
    Post.all.count
  end
end
