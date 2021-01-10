class FoodsController < ApplicationController
  def index
    @foods = Food.order(id: "DESC")
  end
end
