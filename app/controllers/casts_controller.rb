class CastsController < ApplicationController
	before_action :authenticate_user!
	load_and_authorize_resource

	def new
		@cast = Cast.new(casts_params)
	end

	def create
		@cast = Cast.create(casts_params)
		respond_with(@cast)
	end

	def casts_params
		params.permit(:title, :content, :video_url, :category_id, :type, :code_url, 
									:created_at, :updated_at)
	end
end
