class BookmarksController < ApplicationController
  before_action :set_list, only: %i[new create]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new
    @bookmark.list = @list
    if @bookmark.save
      redirect_to lists_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(paramns[:id])
    @bookmark.destroy
    redirect_to lists_path(@bookmark.list)
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end
end
