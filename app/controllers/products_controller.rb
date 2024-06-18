class ProductsController<ApplicationController
  def index
    @products=Product.all
  end
  def show
    @product=Product.find(params[:id])
  end
  def new
    @product=Product.new
  end
  def create
    @product=Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: 'tu producto se ha creado correctamente'
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @product=Product.find(params[:id])
  end  
  private
  def product_params
    params.require(:product).permit(:nombre,:descripcion,:precio)
  end
end
 