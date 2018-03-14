class PokemonsController < ApplicationController
  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer_id = current_trainer.id
    puts "CAPTURING"
    puts @pokemon.name
    @pokemon.save
    redirect_to root_path
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    @pokemon.health -= 10
    @pokemon.save
    @trainerId = @pokemon.trainer_id
    if @pokemon.health <=0
      @pokemon.delete
    end
    redirect_to trainer_path(@trainerId)
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.create(name: params[:pokemon][:name], trainer: current_trainer, ndex: params[:pokemon][:ndex], level: 1, health: 100)
    if @pokemon.save
      redirect_to trainer_path(current_trainer.id)
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      redirect_to new_pokemon_path
    end
  end
end
