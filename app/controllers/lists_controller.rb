class ListsController < ApplicationController
  #before_action :list_params, only: %i[show create]
  def index
    @lists = List.all
  end

  def show
    @lists = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @lists = List.create(list_params)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
