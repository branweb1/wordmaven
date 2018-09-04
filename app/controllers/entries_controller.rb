class EntriesController < ApplicationController
  def index
    @entries = Entry.first(10)
  end
end
