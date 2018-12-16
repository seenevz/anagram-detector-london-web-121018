

class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(compare_a)
    compare_a.map do |compare_w|
      if compare_w.split(//).sort == @word.split(//).sort
        compare_w
      end
    end.compact
  end
end
