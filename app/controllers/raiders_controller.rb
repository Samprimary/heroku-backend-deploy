class RaidersController < ApplicationController
  before_action :set_raider, only: [:show, :update, :destroy]

  # GET /raiders
  def index
    @raiders = Raider.all

    render json: @raiders
  end

  # GET /raiders/1
  def show
    render json: @raider
  end

  # POST /raiders
  def create
    @raider = Raider.new(raider_params)

    if @raider.save
      render json: @raider, status: :created, location: @raider
    else
      render json: @raider.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /raiders/1
  def update
    if @raider.update(raider_params)
      render json: @raider
    else
      render json: @raider.errors, status: :unprocessable_entity
    end
  end

  # DELETE /raiders/1
  def destroy
    @raider.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raider
      @raider = Raider.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def raider_params
      params.require(:raider).permit(:name, :power, :users_id)
    end
end
