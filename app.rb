require('Sinatra')
require('Sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb (:index)
end

get('/anagrams') do
  @anagrams = params.fetch('word').anagram('words')
  erb(:anagrams)
end
