require('sinatra')
require('sinatra/reloader')
require('./lib/word_freq')
require('pry')

get('/') do
  erb(:form)
end

get('/result') do
  @input_string = params.fetch("string_input")
  @input_word = params.fetch("word_input")
  @result = params.fetch("string_input").whole_word_freq(params.fetch("word_input"))
  @result_partial = params.fetch("string_input").partial_word_freq(params.fetch("word_input"))

  erb(:result)
end
