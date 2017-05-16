class LinksController < ApplicationController
  def new
  	@link = Link.new
  end

  def create
  	@link = Link.new(link_params)

  	if @link.save
  		redirect_to links_path
  	else
  		render 'new'
  	end
  end

  def index
  	@links = Link.all
  end

  def destroy
  	@link = Link.find(params[:id])
  	@link.delete
  	redirect_to links_path
  end

  def edit
  	@link = Link.find(params[:id])
  end

  def update
  	@link = Link.find(params[:id])

  	if @link.update(link_params)
  		redirect_to links_path
  	else
  		render 'edit'
  	end
  end

  private

  def link_params
  	params.require(:link).permit(:title, :url, :description)
  end

end
