class Api::V1::DestinationsController < ApplicationController
    def index
        destinations = Destination.all 
        render json: destinations
    end

    def show
        destination = Destination.find(params[:id])
        render json: destination 
    end

    def update
        destination = Destination.find(params[:id])
        destination.update(destination_params)
        if destination.save
            render json: destination, status: :accepted
        # else
        #     render json: { errors: destination.errors.full_messages }, status:
        #     :unprocessible_entity }
        end
    end

    private

    def destination_params
        params.require(:destination).permit(:location, :img_url)
    end
end
