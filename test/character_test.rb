require 'minitest/autorun'
require_relative '../lib/character'

class TestCharacter < Minitest::Test

  def setup
    @kitt = Character.new ({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  end

  def test_character_initialized
    assert_instance_of Character, @kitt
    assert_equal "KITT", @kitt.name
    assert_equal "William Daniels", @kitt.actor
    assert_equal 1000000, @kitt.salary
  end

  

end
