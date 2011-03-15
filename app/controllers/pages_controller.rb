class PagesController < ApplicationController
  before_filter :authenticate_user!, :except => [:help, :home]
  def home
    @title = "home"
  end

  def contact
    @title = "contact"
  end

  def about
    @title = "about"
  end

  def help
    @title = "help"
  end

  def administration
    if current_user.try(:admin?)
      @users = User.find(:all)
    else
      flash.now[:error] = "Need to be admin"
      render "home"
    end
  end

end

