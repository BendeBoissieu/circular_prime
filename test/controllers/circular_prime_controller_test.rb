require 'test_helper'

class CircularPrimeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get circular_prime_index_url
    assert_response :success
  end

  test "should get new" do
    get new_circular_prime_url
    assert_response :success
  end

    test "should get show" do
    @nb_to_analyze = CircularNb.create(value: 1)
    get circular_prime_url( @nb_to_analyze )
    assert_response :success
  end

    #test "the results should be circular prime" do
    #@nb_to_analyze = CircularNb.create(value: 100)
    #get circular_prime_url( @nb_to_analyze )
    #assert_equal [97, 79, 73, 71, 37, 31, 17, 13, 11, 7, 5, 3, 2], @nb_to_analyze.results
    #end


end
