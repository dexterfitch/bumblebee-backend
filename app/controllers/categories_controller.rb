class CategoriesController < ApplicationController

  get "/categories" do
    all_categories = Category.all
    all_categories.to_json
  end

  post "/categories" do
    # params = whatever the body from the frontend is
    # params is an object
    Category.find_or_create_by(name: params[:name], description: params[:description])
  end

  delete "/categories/:id" do
    Category.find(params[:id]).delete
  end

  patch "/categories/:id" do
    this_category = Category.find(params[:id])
    this_category.name = params[:name]
    this_category.description = params[:description]
    this_category.save
  end

end