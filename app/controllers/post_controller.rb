class PostController < ApplicationController
  before_action :authenticate_user!
  def index
    @post = Post.all
  end

  def edit
    @post = Post.find(params[:id])
    render layout: 'homepage'
  end

  def new
    @post = Post.new
    @journal_id = params[:journal_id]
    render layout: 'homepage'
  end

  def create
    @post = Post.new(params.require(:post).permit(:info, :journal_id, :title, :image))

    if @post.save
      redirect_to show_journal_path(@post.journal_id)
    else
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params.require(:post).permit(:info, :title, :image))
      redirect_to show_journal_path(@post.journal_id)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to show_journal_path(@post.journal_id)
  end

end
