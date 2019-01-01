# require modules here
require "yaml"

def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)
  library = {"get_meaning" => {}, "get_emoticon" => {} }
  emoticons.each do |meaning, emote_array|
    library["get_meaning"][emote_array[1]] = meaning
    library["get_emoticon"][emote_array[0]] = emote_array[1]
  end
  library
end

def get_japanese_emoticon(file_path, emote)
  # code goes here
  
  load_library(file_path)["get_emoticon"].each do |eng_emote, jp_emote|
    if emote == eng_emote
      return jp_emote
    end
  end
  "Sorry, that emoticon was not found"
end

def get_english_meaning
  # code goes here
end