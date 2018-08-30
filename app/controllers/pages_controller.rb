class PagesController < ApplicationController
  def home
    @posts = MyBlog.all
  end

  def about
  end

  def contact
  end
end
