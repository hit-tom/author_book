class ApiController < ActionController::API
  include ApplicationMethods
  include Pagination

  def per_page
    10
  end
end
