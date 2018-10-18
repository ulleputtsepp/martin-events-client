class ApiController < ApplicationController
	skip_before_action :authenticate_user!
  def about
  	render json: {
  		name: "Ülle",
  		time: Time.now.strftime("%H:%M"),
  		date: Time.now.strftime("%C-%m-%d"),
  		fruits: ['banana', 'apple', 'cranberry']
  	}
  end
end
