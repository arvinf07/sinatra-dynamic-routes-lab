require_relative 'config/environment'
require 'pry'


class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    params[:name].reverse
  end  

  get '/square/:number' do
    num = params[:number].to_i
    (num * num).to_s
  end  

  get '/say/:number/:phrase' do
    num, phrase = params[:number].to_i, params[:phrase]
    string = []
    num.times do 
      string << phrase
    end  
    string
  end  

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = params.values
    string.join(" ") << '.'
  end  

  get '/:operation/:number1/:number2' do
    num_1, num_2 = params[:number1].to_i, params[:number2].to_i
    operation = params[:operation]
    if operation == 'add'  
      (num_1 + num_2).to_s
    elsif operation == 'multiply'  
      (num_2 * num_1).to_s
    elsif operation == 'subtract'  
      (num_2 - num_1).to_s
    else
      (num_1/num_2).to_s 
    end  
  end   


end