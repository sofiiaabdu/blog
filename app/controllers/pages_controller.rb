class PagesController < ApplicationController
  def home
    @posts = MyBlog.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end
end
