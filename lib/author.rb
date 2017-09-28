class Author

  attr_accessor :posts, :name, :author

  def initialize(name)
    @posts = []
    @name = name
  end

  def add_post(post)
    @posts << post
    post.author = self 
  end

    def add_post_by_title(title)
      p = Post.new(title)
      p.author = self
      @posts << p
    end

end
