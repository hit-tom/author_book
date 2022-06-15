class BooksController < ApiController
  before_action :find_book, only: [:show, :update, :destroy]

  def index
    books  = Book.page(params[:page]).per(params[:per_page])
    render json: {books: books, page_meta: page_meta(books)}
  end

  def create
    book = Book.new(book_params)
    if book.save
      render json: {data: book, status: 200}
    else
      render json: {status: 400, errors: book.errors.full_message}
    end
  end

  def update
    if @book.update(book_params)
      render json: {data: book, message: 'successfully created', status: 200}
    else
      render json: {status: 400, errors: @book.errors.full_message}
    end
  end

  def show
    render json: {data: @book}
  end

  def destroy
    if @book.destroy
      render json: {message: 'successfully deleted'}
    else
      render json: {message: 'something went wrong'}
    end
  end

  private

  def find_book
    @book = Book.find_by(id: params[:id])
    render json: { message: "Record not found"} unless @book
  end

  def book_params
    params.permit(:name, :publication_year, :edition, author_ids: [])
  end
end
