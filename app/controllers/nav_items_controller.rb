class NavItemsController < Koi::CrudController

  def index
    @nav_items = NavItem.all
    render json: @nav_items, each_serializer: NavItemSerializer
  end

  def show
    @nav_item = NavItem.find(params[:id])
    render json: @nav_item, serializer: NavItemSerializer
  end

end
