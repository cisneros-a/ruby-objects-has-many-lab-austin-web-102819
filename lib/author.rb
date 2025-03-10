require "post"

class Author

    attr_accessor :name, :post
    @@all = []

    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end 

    def add_post(post)
        @posts << post
    end 

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        post.author = self
        add_post(post)

    end



    def posts
        Post.all.select {|post| post.author = self}
    end 

    def self.post_count
        Post.all.length
    end 
end 