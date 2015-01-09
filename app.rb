require('sinatra')
require('sinatra/reloader')
require('./lib/word_freq')

get('/form') do
  erb(:form)
end

get('/result') do
  @input_string = params.fetch("string_input")
  @input_word = params.fetch("word_input")
  @result = params.fetch("string_input").word_freq(params.fetch("word_input"))
  erb(:result)
end
