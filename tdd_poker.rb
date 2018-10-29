require "minitest/autorun"
require_relative "poker.rb"

class TestYourFunctions < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_if_deck_has_52cards
        assert_equal(52, deck().count)
    end

    def test_assert_4_is_IV()
    	assert_equal(white.count, 5)
    end

    
    def test_assert_4_is_IV()
    	assert_equal(Array, white.class)
    end
end