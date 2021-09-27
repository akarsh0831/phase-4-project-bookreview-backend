class BooksController < ApplicationController

    # GET /books
    def index
        books = Book.all
        render json: books
    end

    # GET /books/:id
    def show
        book = Book.find_by(id: params[:id])
        render json: book
    end

    def create
        books = Book.create(params.permit(:title, :author, :review))
        render json: book, status: :created
    end

    def update
        book = Book.find_by(id: params[:id])
        if book
            book.update(book_params)
            render json: book
        else
            render json: { error: "Book not found" }, status: :not_found
        end
    end


    # DELETE /books/:id
    def destroy
        book = Book.find_by(id: params[:id])
        book.destroy
    end

end