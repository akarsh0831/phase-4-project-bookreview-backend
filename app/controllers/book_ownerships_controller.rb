class BookOwnershipsController < ApplicationController

    # GET /book_ownerships
    def index 
        book_ownerships = BookOwnership.all
        render json: book_ownerships
    end

    def show
        book_ownerships = BookOwnership.find_by(id: params[:id])
        render json: book_ownerships
    end

    def create
        book_ownerships = BookOwnership.create(params.permit(:book_id, :title, :author, :review))
        render json: book_ownerships, status: :created
    end

    def update
        book_ownership = BookOwnership.find_by(id: params[:id])
        if book_ownerships
            book_ownership.update(book_ownership_params)
            render json: book_ownership
        else
            render json: { error: "Book Ownership not found" }, status: :not_found
        end
    end

    # DELETE /book_ownerships/:id
    def destroy 
        book_ownerships = BookOwnership.find_by(id: params[:id])
        book_ownerships.destroy
    end

end