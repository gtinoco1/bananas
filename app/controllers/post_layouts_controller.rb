class PostLayoutsController < ApplicationController
  def index
    @post_layouts = PostLayout.all.order({ :created_at => :desc })

    render({ :template => "post_layouts/index.html.erb" })
  end

  def show
    the_id = params.fetch("id_from_path")
    @post_layout = PostLayout.where({:id => the_id }).at(0)

    render({ :template => "post_layouts/show.html.erb" })
  end

  def create
    @post_layout = PostLayout.new
    @post_layout.photo_count = params.fetch("photo_count_from_query")
    @post_layout.caption_count = params.fetch("caption_count_from_query")
    @post_layout.name = params.fetch("name_from_query")

    if @post_layout.valid?
      @post_layout.save
      redirect_to("/post_layouts", { :notice => "Post layout created successfully." })
    else
      redirect_to("/post_layouts", { :notice => "Post layout failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("id_from_path")
    @post_layout = PostLayout.where({ :id => the_id }).at(0)

    @post_layout.photo_count = params.fetch("photo_count_from_query")
    @post_layout.caption_count = params.fetch("caption_count_from_query")
    @post_layout.name = params.fetch("name_from_query")

    if @post_layout.valid?
      @post_layout.save
      redirect_to("/post_layouts/#{@post_layout.id}", { :notice => "Post layout updated successfully."} )
    else
      redirect_to("/post_layouts/#{@post_layout.id}", { :alert => "Post layout failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("id_from_path")
    @post_layout = PostLayout.where({ :id => the_id }).at(0)

    @post_layout.destroy

    redirect_to("/post_layouts", { :notice => "Post layout deleted successfully."} )
  end
end
