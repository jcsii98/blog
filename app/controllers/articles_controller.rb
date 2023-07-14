class ArticlesController < ApplicationController

    def index
        @articles = Article.all

        render :index
    end

    def show
        @article = Article.find(params[:id])
        @comment = @article.comments.build # Comment.new(article_id: @article.id)
    end


    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)

        if @article.save
            redirect_to articles_path # Redirect to the index page
        else
            render :new, status: 422
        end
    end


    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])

        if @article.update(article_params)
            redirect_to show_article_path(@article)
        else
            render :edit
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end


    private

    def article_params
        params.require(:article).permit(:id, :name, :body, :title)
    end
end

