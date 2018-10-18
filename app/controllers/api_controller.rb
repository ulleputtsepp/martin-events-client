class ApiController < ApplicationController
  skip_before_action :authenticate_user!
  skip_before_action :verify_authenticity_token
  def about
  	render json: {
  		name: "Ülle",
  		time: Time.now.strftime("%H:%M"),
  		date: Time.now.strftime("%C-%m-%d"),
  		fruits: ['banana', 'apple', 'cranberry']
  	}
  end

  def haiku
  	render json: {haiku: reverse(params[:haiku])}  	
  end

  def haiku_params
  	params.permit(:name, :haiku)
  end

  	def reverse(haiku)
  		haiku.split(' ').reverse.join(' ')
  	end
 
end
