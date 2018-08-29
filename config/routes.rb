Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get "/all_products" => "products#all_products_method"
    get "/sting" => "products#sting_method"
    get "/frostmourne" => "products#frostmourne_method"
    get "/master_sword" => "products#sting_method"
    get "/buster_sword" => "products#buster_sword_method"
  end
end
