class ArticlesController < ApplicationController

	def new
	end

	def create
		# @article = Article.new
		render plain: params[:article].inspect
	end

end
