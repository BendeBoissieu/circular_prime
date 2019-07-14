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

    test "the value should be integer" do
      nb_to_analyze = CircularNb.create(value: 4.5)
      assert !nb_to_analyze.save
  end

    test "the results should be circular prime" do
      nb_to_analyze = CircularNb.create(value: 100)
      expect(nb_to_analyze.results).to eq ([2,3,5,7,11,13,17,31,37,71,73,79,97])
    end
end

