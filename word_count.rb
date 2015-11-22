class Phrase
  VERSION = 1

  def initialize(phrase)
    @phrase = normalize(phrase)
  end

  def word_count
    @phrase.inject(Hash.new(0)) { |count, word| count[word] += 1 ;count }
  end

  private

  def normalize(phrase)
    phrase.gsub(/[^0-9a-z' ]/i, ' ')
      .split(' ')
      .each {|word| word.gsub!(/^\'|\'?$/, '').downcase! }
  end
end
