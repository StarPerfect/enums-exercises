gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class RejectPatternTest < Minitest::Test

  def test_remove_zeros
    numbers = [2, 93, 7, 0, 0, 1, 0, 31, 0, 368]
    filtered = []
    numbers.each do |number|
      filtered << number unless number.zero?
    end
    assert_equal [2, 93, 7, 1, 31, 368], filtered
  end

  def test_remove_vowels
    letters = ["a", "l", "l", " ", "y", "o", "u", "r", " ", "b", "a", "s", "e", " ", "a", "r", "e", " ", "b", "e", "l", "o", "n", "g", " ", "t", "o", " ", "u", "s"]
    remaining = []
    letters.each do |letter|
      remaining << letter unless 'aeiouy'.include?(letter)
    end
    assert_equal ["l", "l", " ", "r", " ", "b", "s", " ", "r", " ", "b", "l", "n", "g", " ", "t", " ", "s"], remaining
  end

  def test_remove_numbers_divisible_by_3
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
    remaining = []
    numbers.each do |num|
      remaining << num unless num%3 == 0
    end
    assert_equal [1, 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20], remaining
  end

  def test_remove_words_with_more_than_three_letters
    words = ["pill", "bad", "finger", "cat", "blue", "dog", "table", "red"]
    selected = []
    words.each do |word|
      selected << word unless word.length > 3
    end
    assert_equal ["bad", "cat", "dog", "red"], selected
  end

  def test_remove_words_ending_in_e
    words = ["are", "you", "strike", "thinking", "belt", "piece", "warble", "sing", "pipe"]
    selected = []
    words.each do |word|
      selected << word unless word[-1] == 'e'
    end
    assert_equal ["you", "thinking", "belt", "sing"], selected
  end

  def test_remove_words_ending_in_ing
    words = ["bring", "finger", "drought", "singing", "bingo", "purposeful"]
    selected = []
    words.each do |word|
      selected << word unless word[-3..-1] == 'ing'
    end
    assert_equal ["finger", "drought", "bingo", "purposeful"], selected
  end

  def test_remove_words_containing_e
    words = ["four", "red", "five", "blue", "pizza", "purple"]
    selected = []
    words.each do |word|
      selected << word unless word.include?('e')
    end
    assert_equal ["four", "pizza"], selected
  end

  def test_remove_dinosaurs
    animals = ["tyrannosaurus", "narwhal", "eel", "achillesaurus", "qingxiusaurus"]
    notasaurus = []
    animals.each do |animal|
      notasaurus << animal unless animal.include?('saurus')
    end
    assert_equal ["narwhal", "eel"], notasaurus
  end

  def test_remove_numbers
    skip
    elements = ["cat", "dog", 23, 81.1, 56, "aimless", 43]
    not_numbers = []
    elements.each do |element|

    end
    assert_equal ["cat", "dog", "aimless"], not_numbers
  end

  def test_remove_floats
    skip
    elements = ["cat", "dog", 32.333, 23, 56, "aimless", 43.2]
    # Your code goes here
    assert_equal ["cat", "dog", 23, 56, "aimless"], not_numbers
  end

  def test_remove_animals_starting_with_vowels
    skip
    animals = ["aardvark", "bonobo", "cat", "dog", "elephant"]
    # Your code goes here
    assert_equal ["bonobo", "cat", "dog"], remaining
  end

  def test_remove_capitalized_words
    skip
    words = ["CAT", "dog", "AIMLESS", "Trevor", "butter"]
    # Your code goes here
    assert_equal ["dog", "Trevor", "butter"], remaining
  end

  def test_remove_arrays
    skip
    elements = ["CAT", ["dog"], 23, [56, 3, 8], "AIMLESS", 43, "butter"]
    # Your code goes here
    assert_equal ["CAT", 23, "AIMLESS", 43, "butter"], remaining
  end

  def test_remove_hashes
    skip
    elements = ["cat", {:dog=>"fido"}, 23, {:stuff=>"things"}, "aimless", 43]
    # Your code goes here
    assert_equal ["cat", 23, "aimless", 43], remaining
  end

end
