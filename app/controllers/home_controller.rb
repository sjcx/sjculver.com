class HomeController < ApplicationController
  layout "home"
  
  def index
    @contents = Content.all(:order => "created_at DESC")
  end

  def recommend
    @contents = Content.all
    @tags = @contents.map { |content| content.tag }.uniq
  end

end

