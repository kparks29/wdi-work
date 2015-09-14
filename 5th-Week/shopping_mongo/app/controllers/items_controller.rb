class ItemsController < ApplicationController
	def index
    # if params[:show_all] == "true"
    #   @items = Item.all
    # elsif params[:show_all] == "completed"
    #   @items = Item.where(is_completed: true)
    # else
    #   @items = Item.where(is_completed: false)
    # end
  end

  def show
  end

  def new
    @item = Item.new
  end

  def edit
  	@item = Item.find(params[:id])
  end

  def create
	  @item = Item.new(item_params)

    if @item.save
			redirect_to items_path, notice: 'Item was successfully created.'
    else
      render action: 'new'
    end
  end

  def change
    params[:show_all] == "true"
    render action: 'index'
  end

  def update
  	@item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to items_path, notice: 'Item was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
	 	@item = Item.find(params[:id])
    @item.destroy
		redirect_to items_url
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :quantity, :is_completed)
    end
end
