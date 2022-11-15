class Album < ActiveRecord::Base
    belongs_to :person

def index
    render json: Album.all, status: :ok
end

def show
    album = Album.find(params[:id])
    render json: album, status: :ok
end

def create
    album = Album.create(place_params)
    render json: Album, status: :created
end

def update
    comment = Comment.find(params[:id])
    comment.update!(comment_params)
    render json: comment, status: :accepted
end

# for the review method
# def destroy
#     comment = Comment.find(params[:id])
#     comment.destroy
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