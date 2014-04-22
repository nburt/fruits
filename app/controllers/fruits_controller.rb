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

  def edit
    @fruit = Fruit.find(params[:id])
  end

  def update
    Fruit.update(params[:id], {:name => params[:name], :description => params[:description]})

    redirect_to "/fruits"
  end

end