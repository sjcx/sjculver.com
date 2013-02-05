class ContentsController < ApplicationController
  before_filter :authenticate_admin!
  
  def index
    @contents = Content.all(:order => "created_at DESC")
  end
  
  def new
    @content = Content.new
    @contents = Content.all
    @tags = @contents.map { |content| content.tag }.uniq
  respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content  }
    end
  end

  def edit
    @content = Content.find(params[:id])
    @contents = Content.all
    @tags = @contents.map { |content| content.tag }.uniq
  end

  def create
    @content = Content.new(params[:content])
    @contents = Content.all
    @tags = @contents.map { |content| content.tag }.uniq
    respond_to do |format|
      if @content.save
        format.html { redirect_to @content, notice: 'Content was successfully created.' }
        format.json { render json: @content, status: :created, location: @content }
      else
        format.html { render action: "new" }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @content = Content.find(params[:id])
    @contents = Content.all
    @tags = @contents.map { |content| content.tag }.uniq
    respond_to do |format|
      if @content.update_attributes(params[:content])
        format.html { redirect_to @content, notice: 'Content was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @content = Content.find(params[:id])
    @content.destroy

    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end
end
