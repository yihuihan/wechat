class AirController < ApplicationController
  def index  	
  	puts "Log: AirController-->Index1 called with method get"
  	  	
  	if request.get?
  		result=user_sign(params)
      render :text=>result
  	elsif request.post?
  		result=get_msg(params)
      render :text=>result
  	end
    return
  end

  def user_sign(params)
  	puts "Log: user_sign method called"
    params.each do |key,value|
      puts "Log: Param #{key}: #{value}"
    end
  	return params['echostr'] if params.has_key?('echostr')
  end

  def get_msg(params)
  	puts "Log: get_msg method called"
    params.each do |key,value|
      puts "Log: Param #{key}: #{value}"
    end
  end
end
