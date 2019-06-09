class BlogsController < ApplicationController
  def show
  	@blog = Blog.find(params[:id])
  end

  def index
  	# pp "============index"
  	# ＠blogs = Blog.all
  	@blogs = Blog.all
  	  	pp @blogs
  end

  def new
  	@blog = Blog.new
  end

  def create
  	blog =  Blog.new(blog_params)
  	blog.save
  	redirect_to blogs_path
  end

def edit
    @blog = Blog.find(params[:id])
  end

  private
  def blog_params
  	params.require(:blog).permit(:title, :category, :body)
  end


  

  def update
  	  blog = Blog.find(params[:id])
  	  blog.update(blog_params)
  	  redirect_to blog_path(blog)
  end
end
