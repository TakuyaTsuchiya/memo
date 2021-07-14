class PostsController < ApplicationController
  def create
    Post.create(params.require(:post).permit(:content).merge(user_id: current_user.id))
    redirect_to root_path
  end

  def destroy
    post = Post.find(params["id"])
    if post.user == current_user
      post.destroy!
    end

    redirect_to root_path
  end
end
