class PostsController < ApplicationController
  def index
       @posts =Post.all
    render json: {messege: "successfully get posts",posts: @posts}
  end
  def new
    @post=Post.new
     render json: {messege: "successfully get posts",post: @post}
  end
  def create
    post = Post.new(post_params)
    if post.save
      p"============="
      p params
      p"============="
      
       render json: post
    else
      render json: post.erros, status: 422
    end
    
    
  end

  def show
   
    render json: Post.find(params[:id])
  end
  def update
   post = Post.find(params[:id])
    if post.update(post_params)
      render json: post
    else
      render json: post.errors, status: 422
    end
  end
  def edit
  end
  
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
