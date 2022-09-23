# ASSESSMENT 6: Rails Commenting Challenge

# Add comments to the Rails Blog Post Challenge
# Explain the purpose and functionality of the code directly below the 10 comment tags


# FILE: app/controller/blog_posts_controller.rb

# ---1) This is the controller for the blog post application. This is where you store all the functions that make your routes and views work.
class BlogPostsController < ApplicationController
  def index
    # ---2) This makes it so that your index view will display all posts.
    @posts = BlogPost.all
  end

  # ---3) Show allows you to find one instance of a post that you created.
  def show
    @post = BlogPost.find(params[:id])
  end

  # ---4) New displays html, in this case it would be something like a text box so that you can enter a blog post.
  def new
    @post = BlogPost.new
  end

  def create
    # ---5) create adds on to an already existing view, in this case new. This allows us to actually store the created blog post in a database. It makes it so if the post is valid, aka has a title and content, it will show us our post. If not, it will keep us on the new blog post page.
    @post = BlogPost.create(blog_post_params)
    if @post.valid?
      redirect_to blog_post_path(@post)
    else
      redirect_to new_blog_post_path
    end
  end

  def edit
    # ---6) Edit, similar to new, displays html. In this case it would show a page that has our blog post in a text box
    @post = BlogPost.find(params[:id])
  end

  def update
    @post = BlogPost.find(params[:id])
    # ---7) Update adds on to an already existing view, and allows us to change thedata that is in our database. If the updated post is valid, aka has a title and content, it will take us to that post. If not, it will keep us on the update page.
    @post.update(blog_post_params)
    if @post.valid?
      redirect_to blog_post_path(@post)
    else
      redirect_to edit_blog_post_path
    end
  end

  def destroy
    @post = BlogPost.find(params[:id])
    if @post.destroy
      redirect_to blog_posts_path
    else
      # ---8) Destroy allows us to delete an instance of a blog post in our database. In thisc ase, it also redirects us to our index or root page.
      redirect_to blog_post_path(@post)
    end
  end

  # ---9) Private is what allows us to have some security, as the stuff in private is viewable only to us.
  private
  def blog_post_params
    # ---10) This makes it so you are required to have a title and content, and we will use these in our update and create.
    params.require(:blog_post).permit(:title, :content)
  end
end
