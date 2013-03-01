class AirController < ApplicationController
  def index  	
  	puts "Log: AirController-->Index1 called with method get"
  	params.each do |key,value|
	  puts "Log: Param #{key}: #{value}"
	end

	request_method=request.method
	if request_method=='GET'
		user_sign
	elsif request_method=='POST'
		get_msg
	end
  end

  def user_sign
  	puts "Log: user_sign method called"
  end

  def get_msg
  	puts "Log: get_msg method called"
  end
end
