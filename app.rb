require("sinatra")
  require("sinatra/reloader")
  also_reload("lib/**/*.rb")
  require("./lib/places")

  get("/") do
    @places = Places.all()
    erb(:index)
  end

  post("/places") do
    description = params.fetch("description")
    places = Places.new(description)
    places.save()
    erb(:result)
  end
