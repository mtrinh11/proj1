class PokemonsController < ApplicationController

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save
		redirect_to root_path
	end

	def damage
		@p = Pokemon.find(params[:id])
		@p.health = @p.health - 10
		if @p.health <= 0
			@p.destroy
		else
			@p.save
		end
		redirect_to trainer_path(@p.trainer)
	end

	def create
		pokemon = Pokemon.new
		pokemon.health = 100
		pokemon.level = 1
		pokemon.trainer = current_trainer
		pokemon.name = params[:pokemons][:name]
		if pokemon.save
			redirect_to trainer_path(current_trainer)
		else
			flash[:error] = pokemon.errors.full_messages.to_sentence
			redirect_to new_pokemon_path
		end

	end

	def new
	end

end