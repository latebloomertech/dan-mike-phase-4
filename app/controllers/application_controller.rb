class ApplicationController < ActionController::API
    include ActionController::Cookies
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_message

def record_not_found_message(error)
  render json: {error: "#{error.model} not found"}, status: :not_found
end


# def hello_world
#     session[:count] = (session[:count] || 0) + 1
#     render json: { count: session[:count] }
# end

end
