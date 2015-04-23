require('pry')
require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagrams') do
  @word = params.fetch('word')
  @anagrams = params.fetch('word').anagram(params.fetch('words'))
  erb(:anagrams)
end
