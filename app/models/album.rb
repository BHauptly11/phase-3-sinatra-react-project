class Album < ActiveRecord::Base
    belongs_to :person

def index
    render json: Album.all, status: :ok
end

def show
    album = Album.find(params[:id])
    render json: album, status: :ok
end

# def create_
#     album = Album.create(params)
#     render json: Album, status: :created
# end

def update_likes
    # like = Album.find(like[:id])
    self.update!(like: like + 1)
    # render json: like, status: :liked
end

# for the review method
# def destroy
#     like = like.find(params[:id])
#     like.destroy
#     render json:{}, status: :ok
#     # render json:{}, status: :deleted
# end

# def destroy
#     album = Album.find(params[:id].destroy).destroy
#     # render json: {}, status: :ok
#     render json: {}, status: :deleted
# end

def album_params
    params.permit(:name, :genre, :artist, :release_year, :image_url, :person_id)
end

end