class Api::V1::GreetingsController < ApplicationController
  def index
    @random_index = rand(1..5).to_s
    render json: Greeting.find_by(id: @random_index)
  end
end
