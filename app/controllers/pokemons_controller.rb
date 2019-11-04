class PokemonsController < ApplicationController
    def capture
        pokemon = Pokemon.where(ndex: params[:id]).take
        pokemon.trainer = current_trainer
        pokemon.save
        redirect_to root_path
    end

    def new
        @pokemon = Pokemon.new()
    end

    def create
        @pokemon = Pokemon.new
        @pokemon.name = params[:pokemon][:name]
        @pokemon.ndex = params[:pokemon][:ndex]
        @pokemon.health = 100
        @pokemon.level = 1
        @pokemon.trainer = current_trainer
        if @pokemon.valid?
            @pokemon.save
            redirect_to trainer_path(id: current_trainer)
        else
            flash[:error] = @pokemon.errors.full_messages.to_sentence
            redirect_to newpokemon_path
        end
    end
end
