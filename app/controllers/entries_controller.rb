class EntriesController < ApplicationController
  def index
    @entries = Entry.first(10)
  end

  def show
    @entry = Entry.find(params[:id])
  end
end
