class HomeController < ApplicationController
  def index
    @contents = Content.all
  end

  def recommend
    @contents = Content.all
    @tags = @contents.map { |content| content.tag }.uniq
  end

end

#Content.find_all_by_tag(params[:tag])