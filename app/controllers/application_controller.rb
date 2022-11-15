class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Returns everything
  get "/albums" do
    album = Album.all
    album.to_json{include: { :albums { include: :person }}}
  end

# Returns specific instance
get "/albums/:id" do
  album = Album.find(params[:id])
  album.to_json{include: { :album { include: :person }}}
end

#Deletes album
delete "/albums/id" do
  album = Album.find(params[:id]).to_json
  album.destroy
  album.to_json

#Updates album
patch "/albums:id" do
  album = Album.find(params[:id]).to_json
  album.update("":params[:genre])
end

#grabs all the places by category
get "albums/genre_sort/:genre" do
  genre = Album.genre_sort(params[:genre])
  genre.to_json
end

#Post request from input form
post 'albums' do
  album = Album.create(name:params[:name], genre:params[:genre], artist:params[:artist], release_year:params[:release_year], image_url:params[:image_url], person_id:params[:person_id] )
  album.to_json
end

#returns all of the last model if we have one
# get "/last model" do
#  last medel = Last model.all
#  last model.to_json
# end


end
