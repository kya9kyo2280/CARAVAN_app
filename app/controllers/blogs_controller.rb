class BlogsController < ApplicationController
  def show
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

  private
  def blog_params
  	params.require(:blog).permit(:title, :category, :body)
  end


  def edit
  end
end
