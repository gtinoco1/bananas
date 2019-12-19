class PostsController < ApplicationController
  # before_action :authenticate_user!, :except => [:show, :index]

  def index
    @posts = Post.all.order({ :created_at => :desc })

    render({ :template => "posts/index.html.erb" })
  end

  def show
    the_id = params.fetch("id_from_path")
    @post = Post.where({:id => the_id }).at(0)

    render({ :template => "posts/show.html.erb" })
  end

  def edit_form
    @post = Post.find(params.fetch("prefill_with_id"))
    render("posts/edit_form.html.erb")
  end

  def create
    @post = Post.new
    @post.user_id = params.fetch("user_id_from_query")
    @post.title = params.fetch("title_from_query")
    @post.photo1 = params.fetch("photo1_from_query")
    @post.photo2 = params.fetch("photo2_from_query")
    @post.photo3 = params.fetch("photo3_from_query")
    @post.photo4 = params.fetch("photo4_from_query")
    @post.ingredients = params.fetch("ingredients_from_query")
    @post.instructions = params.fetch("instructions_from_query")
    @post.category = params.fetch("category_from_query")
    @post.caption1 = params.fetch("caption1_from_query")
    @post.caption2 = params.fetch("caption2_from_query")
    @post.caption3 = params.fetch("caption3_from_query")
    @post.prep_time = params.fetch("prep_time_from_query")
    @post.cook_time = params.fetch("cook_time_from_query")
    @post.serving = params.fetch("serving_from_query")
    @post.post_layout_id = params.fetch("post_layout_id_from_query")

    if @post.valid?
      @post.save
      redirect_to("/posts", { :notice => "Post created successfully." })
    else
      redirect_to("/posts", { :notice => "Post failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("id_from_path")
    @post = Post.where({ :id => the_id }).at(0)

    @post.user_id = params.fetch("user_id_from_query")
    @post.title = params.fetch("title_from_query")
    @post.photo1 = params.fetch("photo1_from_query")
    @post.photo2 = params.fetch("photo2_from_query")
    @post.photo3 = params.fetch("photo3_from_query")
    @post.photo4 = params.fetch("photo4_from_query")
    @post.ingredients = params.fetch("ingredients_from_query")
    @post.instructions = params.fetch("instructions_from_query")
    @post.category = params.fetch("category_from_query")
    @post.caption1 = params.fetch("caption1_from_query")
    @post.caption2 = params.fetch("caption2_from_query")
    @post.caption3 = params.fetch("caption3_from_query")
    @post.prep_time = params.fetch("prep_time_from_query")
    @post.cook_time = params.fetch("cook_time_from_query")
    @post.serving = params.fetch("serving_from_query")
    @post.post_layout_id = params.fetch("post_layout_id_from_query")

    if @post.valid?
      @post.save
      redirect_to("/posts/#{@post.id}", { :notice => "Post updated successfully."} )
    else
      redirect_to("/posts/#{@post.id}", { :alert => "Post failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("id_from_path")
    @post = Post.where({ :id => the_id }).at(0)

    @post.destroy

    redirect_to("/posts", { :notice => "Post deleted successfully."} )
  end
end
