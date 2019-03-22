class SightingsController < ApplicationController
    
    def index 
        @animal_sightings = Sighting.all
    end
    
    def show
   
    end
    
    def new
        animal = Animal.find(params[:animal_id])
        @sighting = animal.sightings.new
    end
    
    def create
       @sighting = Sighting.new(sight_params)
        if @sighting.save
           redirect_to animal_path(@sighting.animal)
        else
           render action: :new
        end
    end

 private

   def sight_params
       params.require(:sighting).permit(:date, :time, :langitude, :longitude, :region, :animal_id)
   end

    
    
    def edit
    end 
    
    def update
    end

    
    def destroy
    end
    
end
 

