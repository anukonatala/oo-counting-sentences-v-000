require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    split_array = []
    split_array = self.split(/[?.!]+/)
    split_array.reject { |e| e.to_s.empty? }
    split_array.length
  end
end