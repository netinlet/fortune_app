class FortunesController < ApplicationController

  def index
    @fortune = Fortune.random
    render :text => @fortune.message
  end
end
