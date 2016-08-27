class PagesController < ApplicationController
   skip_before_action :verify_authenticity_token
   
  def Index
    render 'application.html.erb'
  end 
end
