class FruitsController < ApplicationController
  def index

  end

  def new

  end

  def create
    fruits = Fruit.new
    fruits.name = params[:name]
    fruits.description = params[:description]
    fruits.save

    redirect_to "/fruits"
  end

  def fruits
    @fruits = Fruit.all
  end

  def view
    @fruit = Fruit.find(params[:id])
  end

end