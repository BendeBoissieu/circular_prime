class CircularPrimeController < ApplicationController

  def index
    @circularNbs = CircularNb.all
  end

  def new
    @circularNb = CircularNb.new
  end


  def show
    @circularNb = CircularNb.friendly.find(params[:id])
    @circularNb.value.downto(2){|i|
      @circularNb.results << i if circular_prime?(i) == true
    }
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

  def circular_prime?(n)
    if prime?(n)
      return true if permutation_prime?(n)
    else
      return false
  end

  end

  def prime?(n)
    (2..n/2).none?{|i| n % i == 0}
  end

  def permutation_prime?(n)
    prime?(n)
    permut = n.to_s.scan(/./).map {|e| e.to_i }
    (1..(permut.count-1)).each {|i|
    permut.rotate!
    if prime?(permut.join.to_i)
    else
      return false
      break
    end
  }
  end

end
