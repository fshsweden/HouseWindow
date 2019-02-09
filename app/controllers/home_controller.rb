class HomeController < ApplicationController
  def index
    if current_user
      @pres = current_user.presentations.all
      puts @res.inspect
    else

      @presentations = Presentation.all
      render "info"  #info page
    end
  end
end
