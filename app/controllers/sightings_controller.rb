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

    
    def edit
      @sighting = Sighting.find(params[:id])

    end 
    
    def update
         @sighting = Sighting.find(params[:id])
         if(@sighting.update(sight_params))
             redirect_to animal_path(@sighting.animal)
         else
             @errors = @sighting.errors.full_messages 
             render action: :new
         end
    end

    
    def destroy
        @sighting = Sighting.find(params[:id])
        @sighting.destroy
        
        redirect_to animal_path(@sighting.animal)
    end
    
     private

   def sight_params
       params.require(:sighting).permit(:date, :time, :langitude, :longitude, :region, :animal_id)
   end
    
end
 

