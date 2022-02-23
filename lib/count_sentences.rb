require "pry"

class String
  def sentence?
    if self[self.length - 1] == "."
      true
    else
      false
    end
  end

  def question?
    if self[self.length - 1] == "?"
      true
    else
      false
    end
  end

  def exclamation?
    if self[self.length - 1] == "!"
      true
    else
      false
    end
  end

  def count_sentences
    if self.length > 0
      sentences = self.split(/[.!?]/).filter { |element| element != "" }
      return sentences.count
    else
      return 0
    end
  end
end
