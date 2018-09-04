class EntriesController < ApplicationController
  def index
    @entries = Entry.paginate(page: params[:page])
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def show_by_letter
    letter = "#{params[:letter]}%"
    @entries = Entry.where("topic ilike ?", letter).paginate(page: params[:page])
    render 'index'
  end
end
