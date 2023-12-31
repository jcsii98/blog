class CommentsController < ApplicationController
    before_action :get_article

    def index
        @comments = @article.comments
    end

    def new 
        # @comment = Comment.new(article_id: @article.id)
        @comment = @article.comments.build
    end

    def create
        # @comment = Comment.new(article_id: @article.id, comment_params)
        @comment = @article.comments.build(comment_params)
        if @comment.save
            redirect_to article_path(@article.id)
        else
            render :new
        end
    end

    private

    def get_article
        @article = Article.find(params[:article_id])
    end

    def comment_params
        params.permit(:body, :article_id)
    end
end