class FortunesController < ApplicationController

  def index
    @fortune = Fortune.random

    respond_to do |format|
      format.json{ render :json => @fortune.to_json(:except => "_id") }
      format.html
    end
  end
end
