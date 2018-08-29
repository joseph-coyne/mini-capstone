class Api::ProductsController < ApplicationController
  def all_products_method
    @all_products = Product.all
    render 'all_products.json.jbuilder'
  end
  def sting_method
    @sting = Product.first
    render 'sting.json.jbuilder'
  end
  def frostmourne_method
    @frostmourne = Product.second
    render 'frostmourne.json.jbuilder'
  end
  def master_sword_method
    @master_sword = Product.third
    render 'master_sword.json.jbuilder'
  end
  def buster_sword_method
    @buster_sword = Product.fourth
    render 'buster_sword.json.jbuilder'
  end
end
