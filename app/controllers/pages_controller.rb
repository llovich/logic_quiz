class PagesController < ApplicationController
  def index
     #@current = Logician.first
    #session[:quiz_list] = Array.new
    session[:quiz_list] = Logician.ids.shuffle
  end

  def quiz
    @logicians = Logician.all
    params[:guess] ="NoOne"
  end

  def result
     @logicians = Logician.all

  end

  def thanks
  end


end
