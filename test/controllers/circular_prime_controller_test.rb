require 'test_helper'

class CircularPrimeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get circular_prime_index_url
    assert_response :success
  end

  test "should get new" do
    get circular_prime_new_url
    assert_response :success
  end

    test "should get show" do
    @nb_to_analyze = CircularNb.create(value: 1)
    get circular_prime_url( @nb_to_analyze )
    assert_response :success
  end

end
