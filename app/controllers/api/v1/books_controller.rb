module Api
    module V1
        class BooksController < ApplicationController
            def index
                title = params[:title]
                books = HTTParty.get("https://www.googleapis.com/books/v1/volumes?q=#{title}+intitle")
                render json: {status: 'SUCCESS', data: books}, status: :ok
            end
        end
    end
end