class MembersController < ApplicationController
  before_action :set_member, only: %i[ show edit update destroy ]

before_action :authenticate_user!

  def index
    # @members = Member.all
    @pagy, @members = pagy(Member.all)

  end


  def show
  end


  def new
    @member = Member.new
    @pagy, @members = pagy(Member.all)
  end


  def edit
  end

  def create
    @member = Member.new(member_params)

    respond_to do |format|
      if @member.save
        format.html { redirect_to member_url(@member), notice: "Member was successfully created." }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to member_url(@member), notice: "Member was successfully updated." }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @member.destroy!

    respond_to do |format|
      format.html { redirect_to members_url, notice: "Member was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def set_member
      @member = Member.find(params[:id])
    end


    def member_params
      params.require(:member).permit(:username, :age, :gender, :address, :admin_id, :trainer_id)
    end
end
