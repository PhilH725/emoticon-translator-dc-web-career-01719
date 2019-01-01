# require modules here
require "yaml"

def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)
  library = {"get_meaning" => {}, "get_emoticon" => {} }
  emoticons.each do |meaning, emote_array|
    library["get_meaning"][emote_array[0]] = meaning
    library["get_emoticon"][emote_array[0]] = emote_array[1]
  end
  #puts library
  library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end