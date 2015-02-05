class PostsController < InheritedResources::Base
  def index
    @posts = Post.where(:publish => true).order('created_at DESC').page params[:page]
  end
end

