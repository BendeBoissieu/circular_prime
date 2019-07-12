require 'test_helper'

class CircularNbTest < ActiveSupport::TestCase
   test "should not save the model without a value" do
      nb_to_analyze = CircularNb.new
      assert !nb_to_analyze.save
  end


  test "the value should be numerical" do
      nb_to_analyze = CircularNb.create(value: "a")
      assert !nb_to_analyze.save
  end
end
