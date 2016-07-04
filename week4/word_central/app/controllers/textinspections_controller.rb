class TextinspectionsController < ApplicationController

	def new
		render 'new'
	end

	def create

    @text = params[:text_inspection][:user_text]

    @word_count = @text.split(" ").length

    @read_time = @word_count / 250

    #rendering
    render "results"

	end

end
