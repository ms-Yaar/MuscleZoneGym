class TrainersController < ApplicationController
  before_action :set_trainer, only: %i[ show edit update destroy ]

  
  def index
    @trainers = Trainer.all
  end

  
  def show
  end

  
  def new
    @trainer = Trainer.new
  end

  
  def edit
  end

  
  def create
    @trainer = Trainer.new(trainer_params)

    respond_to do |format|
      if @trainer.save
        format.html { redirect_to trainer_url(@trainer), notice: "Trainer was successfully created." }
        format.json { render :show, status: :created, location: @trainer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trainer.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    respond_to do |format|
      if @trainer.update(trainer_params)
        format.html { redirect_to trainer_url(@trainer), notice: "Trainer was successfully updated." }
        format.json { render :show, status: :ok, location: @trainer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trainer.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @trainer.destroy!

    respond_to do |format|
      format.html { redirect_to trainers_url, notice: "Trainer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  
    def set_trainer
      @trainer = Trainer.find(params[:id])
    end

  
    def trainer_params
      params.require(:trainer).permit(:name, :specialization, :admin_id)
    end
end
