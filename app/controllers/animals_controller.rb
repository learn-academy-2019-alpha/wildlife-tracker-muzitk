class AnimalsController < ApplicationController
    def index 
        @animal_list = Animal.all
    end
    
    def show
        @animal= Animal.find(params[:id])
    end
    
    def new
        @animal= Animal.new
    end
    
    
    def create
        @animal= Animal.new(animal_params)
       if @animal.valid?
           @animal.save
           redirect_to animals_path
       else 
           render 'new'
         
        end
    end 
    
    def edit
        @animal = Animal.find(params[:id])
    end 
    
    def update
        @animal = Animal.find(params[:id])
        if @animal.update_attributes(animal_params)
        redirect_to animals_path
    end
end
    
    def destroy
        @animal = Animal.find((params[:id]))
        @animal.destroy
        
        redirect_to animals_path
    end
        
    private
    
    def animal_params
        params.require(:animal).permit(:name, :latin_name, :kingdom)
    end
end 

