module Api
  module V1
    class ArticlesController < ApplicationController
      def index # http://localhost:3000/api/v1/articles
        articles = Article.order('created_at DESC')
        render json: {status: 'SUCCESS', message: 'Loaded articles', data:articles}, status: :ok
      end

      def show
        article = Article.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded article', data:article}, status: :ok
      end
    end
  end
end
