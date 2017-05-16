class HomeController < ApplicationController
  def index
    @posts = Post.all
    
    if user_signed_in?
      @posts = Post.all
    else 
      redirect_to '/users/sign_in'
    end
    
  end
  
  def post
    post = Post.new
    post.writer = params[:writer]
    post.title = params[:title]
    post.content = params[:content]
    post.save
    
    redirect_to '/'
    
  end
  
  def detail
    @detail_post = Post.find(params[:post_id])
  end
  
  def delete
    delete_post = Post.find(params[:post_id])
    delete_post.destroy
    
    redirect_to '/'
    
  end 
  
  def edit
    @edit_post = Post.find(params[:post_id])
  end   
  
  def update
    update_post = Post.find(params[:post_id])
    update_post.writer = params[:writer]
    update_post.title = params[:title]
    update_post.content = params[:content]
    update_post.save
    
    redirect_to '/'
  end

  def comment
    comment = Comment.new
    comment.post_id = params[:post_id]
    comment.content = params[:comment]
    comment.save
    
    redirect_to :back
  end
end

  
  
