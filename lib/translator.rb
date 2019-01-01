# require modules here
require "yaml"

def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)
  h = {:get_meaning => {'^_^' => 'happy', ^/^ => 'a'}, :get_emoticon => {':)' => '^_^'} }
  
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end