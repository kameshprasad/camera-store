class Api::V1::CategoriesController < Api::V1::BaseController

  def index
    @categories = Category.all
    render json: { categories: @categories }
  end

  def products
    @category = Category.find(params[:id])
    @products = @category.products
    render json: { category: @category, products: @products }
  end
end
