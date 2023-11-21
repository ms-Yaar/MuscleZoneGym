class SwappersController < ApplicationController
  before_action :set_swapper, only: %i[ show edit update destroy ]

 
  def index
    @swappers = Swapper.all
  end

 
  def show
  end

 
  def new
    @swapper = Swapper.new
  end

 
  def edit
  end

 
  def create
    @swapper = Swapper.new(swapper_params)

    respond_to do |format|
      if @swapper.save
        format.html { redirect_to swapper_url(@swapper), notice: "Swapper was successfully created." }
        format.json { render :show, status: :created, location: @swapper }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @swapper.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    respond_to do |format|
      if @swapper.update(swapper_params)
        format.html { redirect_to swapper_url(@swapper), notice: "Swapper was successfully updated." }
        format.json { render :show, status: :ok, location: @swapper }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @swapper.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def destroy
    @swapper.destroy!

    respond_to do |format|
      format.html { redirect_to swappers_url, notice: "Swapper was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
 
    def set_swapper
      @swapper = Swapper.find(params[:id])
    end

 
    def swapper_params
      params.require(:swapper).permit(:name, :experience, :admin_id)
    end
end
