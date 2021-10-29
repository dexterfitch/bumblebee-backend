class PalettesController < ApplicationController

  get "/palettes" do
    all_palettes = Palette.all
    all_palettes.to_json
  end

  get "/palettes/category/:id" do
    selected_cat_pals = CategoryPalette.all.select do |category_palette|
      category_palette.category_id === params[:id].to_i
    end

    filtered_palettes = selected_cat_pals.collect do |category_palette|
      Palette.all.select do |palette|
        palette.id === category_palette.palette_id
      end
    end

    filtered_palettes.flatten.to_json
  end

  post "/palette/:pid/category/:cid" do
    CategoryPalette.find_or_create_by(palette_id: params[:palette_id], category_id: params[:category_id])
  end

  delete "/palette/:pid/category/:cid" do
    CategoryPalette.find_by(palette_id: params[:pid], category_id: params[:cid]).delete
  end

end