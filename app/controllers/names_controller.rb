class NamesController < ApplicationController
  def index
    respond_to do |format|
      format.json{
        render :json => %w(Sparky Rusty Bender C3PO)
      }
    end
  end
end
