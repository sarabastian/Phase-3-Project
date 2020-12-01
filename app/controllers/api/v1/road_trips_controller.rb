class Api::V1::RoadTripsController < ApplicationController

    def index
        road_trips = RoadTrip.all 
        render json: road_trips
    end

    def show 
        road_trip = RoadTrip.find(params[:id])
        render json: road_trip
    end

    def create
        road_trip = RoadTrip.new(road_trip_params)
        if road_trip.save
            render json: road_trip, status: :accepted
        end
    end

    def update
        road_trip = RoadTrip.find(params[:id])
        road_trip.update(road_trip_params)
        if road_trip.save
            render json: road_trip, status: :accepted
        end
    end

    private

    def road_trip_params
        params.require(:road_trip).permit(:user_id, :destination_id, :itinerary, :expenses, :group_members)
    end


end
