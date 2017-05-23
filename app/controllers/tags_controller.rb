class TagsController < ApplicationController
	def create
		@tag = Tag.new(tag_params)

		if @tag.save
			redirect_to links_path
		else
			render 'new'
		end
	end

	def new
		@tag = Tag.new
	end

	private

	def tag_params
		params.require(:tag).permit(:title)
	end
end

