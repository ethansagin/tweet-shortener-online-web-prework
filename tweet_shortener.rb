def dictionary
  diction_hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet_str)
  tweet_arr = tweet_str.split(" ")
  counter = 0
  tweet_arr.each do |word|
    diction_hash.each do |key, value|
      if word == key
        tweet_arr[counter] = value
      end
    end
    counter += 1
  end
  tweet_arr.join(" ")
end