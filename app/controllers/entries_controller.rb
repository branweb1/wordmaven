class EntriesController < ApplicationController
  def index
    @entries = Entry.order(:topic).paginate(page: params[:page], per_page: 45)
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
