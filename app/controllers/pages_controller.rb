class PagesController < ApplicationController
  def home
  end

  def lazy_load
    # sleep(2)
    # @posts = Post.all
    @posts = Post.limit(100)
    render partial: "posts/posts", posts: @posts
  end
end
