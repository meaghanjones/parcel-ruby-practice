require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')

get('/') do
  erb(:index)
end

get('/results') do
  length = params.fetch('length').to_i()
  width = params.fetch('width').to_i()
  height = params.fetch('height').to_i()
  speed = params.fetch('speed')
  weight = params.fetch('weight')
  distance = params.fetch('distance')
  @parcel = Parcel.new(length, width, height, speed, weight, distance)
  @parcel.volume()
  @price = @parcel.cost_to_ship()
  erb(:results)
end
