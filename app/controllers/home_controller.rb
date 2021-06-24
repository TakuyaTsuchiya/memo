class HomeController < ActionController::Base
  def show
    @posts = Post.all
  end
end
