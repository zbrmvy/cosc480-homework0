class GuestBookCommentsController < ApplicationController
  def index
    @guest_book_entries = GuestBookComment.all
  end

  def create
    @entry = GuestBookComment.create!(params[:guest_book_comment])
    flash[:notice] = "Comment by #{@entry.title} was successfully created."
    redirect_to guest_book_comments_path
  end

  def new
    # default: render 'new' template
  end
end
