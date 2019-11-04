class TrainersController < ApplicationController
  before_action :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
    @pokemons = Pokemon.where(trainer: params[:id])
  end

  def damage
    pokemon = Pokemon.where(ndex: params[:id]).take
    pokemon.health = pokemon.health - 10
    pokemon.save
    if pokemon.health == 0
      pokemon.destroy
    end
    redirect_to trainer_path(id: params[:t_id])
  end

end
