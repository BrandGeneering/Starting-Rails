class CommentsController < ApplicationController

	def create
		@article = Article.find(params[:article_id])
		@comment = @article.comments.create(comment_params)

		redirect_to article_path(@article)
	end

	def destroy
		@comment = Comment.where(article_id: params[:article_id])
	end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :body)
		end
end
