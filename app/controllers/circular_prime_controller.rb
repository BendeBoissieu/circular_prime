class CircularPrimeController < ApplicationController

  def index
    @circularNbs = CircularNb.all
  end

  def new
    @circularNb = CircularNb.new
  end


  def show
    @circularNb = CircularNb.find(params[:id])
  end

  def create
    @circularNb = CircularNb.new(circularNb_params)
    if @circularNb.save
      redirect_to circular_prime_path(@circularNb)
    else
      render :new
    end
  end

  def circularNb_params
    params.require(:circular_nb).permit(:value, :results)
  end


end
