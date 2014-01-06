class ProductsController < CrudController

  belongs_to :category, optional: true

  def index
    builder = Product.scoped

    if params[:category_id]
      builder = Category.find(params[:category_id]).products
    end

    if ids = params[:ids]
      @products = builder.where(:id => ids)
    else
      @products = builder
    end

    render json: @products
  end

end
