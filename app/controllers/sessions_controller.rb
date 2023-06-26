class SessionsController < ApplicationController
  
  def index
    session[:session_hello] = "Hello, Rails" if session[:session_hello].nil?
    cookies[:cookies_hello] = "Hello, Cookies" if cookies[:cookies_hello].nil?
    render json: { session: session, cookies: cookies.to_hash }
  end
end
