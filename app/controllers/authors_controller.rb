class AuthorsController < ApiController

  def index
    authors  = Author.page(params[:page]).per(params[:per_page])
    render json: {authors: authors, page_meta: page_meta(authors)}
  end

end
