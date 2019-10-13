def echo(this)
  this
end

def shout(this)
  this.upcase
end

def repeat(this, x = 2)
  ((this + " ") * x).strip
end

def start_of_word(this, x)
  this[0..x-1]
end

def first_word(this)
  index_of_space = this.index(' ') - 1
  this[0..index_of_space]
end

def titleize(this)
  little_words = ['the', 'and', 'by', 'on', 'of', 'over']
  words_in_title = this.split(' ')

  words_in_title.map!.with_index do |word, idx|
    if idx == 0 
      word.capitalize
    elsif !little_words.include? word
      word.capitalize
    else
      word = word
    end
  end

  words_in_title.join(' ')
end
