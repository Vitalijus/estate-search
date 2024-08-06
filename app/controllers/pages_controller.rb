# require "pry"

class PagesController < ApplicationController
  def index
  end

  def show
    @breed = params[:breed]
    response = DogApi::GetBreed.new(params[:breed])
    response.build_result

    if response.error.present?
      @error = response.error
    else
      @result = response.result
    end

    respond_to do |format|
      format.js
      format.html
    end
  end
end
