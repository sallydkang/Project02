class JournalController < ApplicationController
before_action :authenticate_user!
  def index
    @journal = Journal.where(user_id: current_user.id)
    render layout: 'homepage'
  end

  def show
    @journal = Journal.find(params[:id])
    @post = Post.where(journal_id: @journal.id)
    render layout: 'homepage'
  end

  def new
    @journal = Journal.new
    render layout: 'homepage'
  end

  def edit
    @journal = Journal.find(params[:id])
    render layout: 'homepage'
  end

  def create
    @journal = Journal.new(params.require(:journal).permit(:name, :user_id))

    if @journal.save
      redirect_to journal_path
    else
      render :new
    end
  end

  def update
    @journal = Journal.find(params[:id])

    if @journal.update_attributes(params.require(:journal).permit(:name, :user_id))
      redirect_to journal_path
    else
      render :edit
    end
  end

  def destroy
    @journal = Journal.find(params[:id])
    @journal.destroy
    redirect_to journal_path
  end
end
