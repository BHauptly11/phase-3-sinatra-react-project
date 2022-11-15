class Person < ActiveRecord::Base
    has_many :Persons

    def index
        render json: Person.all, status: :ok
    end

    def show
        person = Person.find(params[:id])
        render json: Person, status: :ok
    end

    def create
        person = Person.create(place_params)
        render json: Person, status: :created
    end

    def update
        comment = Comment.find(params[:id])
        comment.update!(comment_params)
        render json: comment, status: :accepted
    end

    def destroy
        person = Person.find(params[:id])
        person.destroy
        # render json:{}, status: :ok
        render json:{}, status: :deleted
    end

def album_params
        params.permit{:first_name, :last_name}
    end

end