class TodoitemsController < ApplicationController
  before_action :set_todoitem, only: [:show, :update, :destroy]

  # GET /todoitems
  def index
    @todoitems = Todoitem.all

    render json: @todoitems
  end

  # GET /todoitems/1
  def show
    render json: @todoitem
  end

  # POST /todoitems
  def create
    @todoitem = Todoitem.new(todoitem_params)

    if @todoitem.save
      render json: @todoitem, status: :created, location: @todoitem
    else
      render json: @todoitem.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /todoitems/1
  def update
    if @todoitem.update(todoitem_params)
      render json: @todoitem
    else
      render json: @todoitem.errors, status: :unprocessable_entity
    end
  end

  # DELETE /todoitems/1
  def destroy
    @todoitem.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todoitem
      @todoitem = Todoitem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def todoitem_params
      params.require(:todoitem).permit(:name, :active)
    end
end
