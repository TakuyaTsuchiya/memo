class PostsController < ActionController::Base
  def create
    Post.create(params.require(:post).permit(:content))
    redirect_to root_path
  end
end
