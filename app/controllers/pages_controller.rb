class PagesController < ApplicationController
  def index
  end

  def quiz
    @logicians = Logician.all
  end

  def result
     @logicians = Logician.all
  end

  def thanks
  end
end
