class StaticPagesController < ApplicationController
  def about
  end

  def not_found
    render text: 'quoth the server: 404'
  end
end
