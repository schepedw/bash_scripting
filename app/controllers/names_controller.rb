class NamesController < ApplicationController
  def index
    respond_to do |format|
      format.json{
        render :json => %w(Sparky Rusty Bender C3PO)
      }
    end
  end

  def check_unique
    file_location = Rails.root.join('tmp', 'taken.txt')
    File.open(file_location, 'r') do |file|
      contents = file.read
      head(409) and return if contents.split("\n").include?(params[:name])
    end
    File.open(file_location, 'a') do |file|
      file.puts(params[:name])
      head(200) and return
    end
  end
end
