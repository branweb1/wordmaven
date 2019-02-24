class EntriesController < ApplicationController
  def index
    @entries = Entry.order(:topic).paginate(page: params[:page], per_page: 45)
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def show_by_letter
    letter = "#{params[:letter]}"
    puts letter
    if letter == 'misc'
      @entries = Entry.where("topic !~* ?", "^[a-z]").order('topic').paginate(page: params[:page])
    else
      @entries = Entry.where("topic ~* ?", "^#{letter}").order('topic').paginate(page: params[:page])
    end
    render 'index'
  end
end
