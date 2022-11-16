class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Returns everything
  get "/albums" do
    album = Album.all
    album.to_json( include: :person )
  end

# Returns specific instance
get "/albums/:id" do
  album = Album.find(params[:id])
  album.to_json( include: :person )
end

#Deletes album
delete "/albums/:id" do
  album = Album.find(params[:id])
  album.destroy
  album.to_json
end
# #Updates album
# patch "/albums/:id" do
#   album = Album.find(params[:id])
#   album.update(person:params[:person])
#   album.to_json
# end

#grabs all the places by category
get "/albums/genre_sort/:genre" do
  genre = Album.where("genre like ?" , params[:genre])
  genre.to_json
end

#Post request from input form
post '/albums' do
  album = Album.create(name:params[:name], genre:params[:genre], artist:params[:artist], release_year:params[:release_year], image_url:params[:image_url], person_id:params[:person_id], like:params[:like]  )
  album.to_json
end


#patch request
patch "/albums/:id" do
 album = Album.find(params[:id])
 album.update_likes
#  album.update(like:params[:like])
#  album.to_json
end




#returns all of the last model if we have one
# get "/last model" do
#  last medel = Last model.all
#  last model.to_json
# end


end
