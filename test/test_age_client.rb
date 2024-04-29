# frozen_string_literal: true

require "test_helper"

class TestAgeClient < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::AgeClient::VERSION
  end

  def test_it_does_something
    assert true
  end
end
