require('sinatra')
  require('sinatra/reloader')
  require('./lib/scrabble')
  also_reload('lib/**/*.rb')

  get('/') do
    erb(:index)
  end

  get('/scrabble') do
   @title = params.fetch('scrabble').scrabble()
   erb(:scrabble)
  end

