module ApplicationMethods
  extend ActiveSupport::Concern

  private

  def render_success_response(resources = {}, message = "", meta = {}, status = 200)
    json_response({
      success: true,
      message: message,
      data: resources,
      meta: meta
    }, status)
  end

  def json_response(options = {}, status = 500)
    render json: JsonResponse.new(options), status: status
  end

  def array_serializer
    ActiveModel::Serializer::CollectionSerializer
  end

  def single_serializer
    ActiveModelSerializers::SerializableResource
  end

end
