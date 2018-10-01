require "minitest/autorun"
require_relative "poker.rb"

class TestYourFunctions < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_if_ace_low_equals_1
        assert_equal(1, ace_low)
    end
end