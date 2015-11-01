class User::SystemsController < ApplicationController
  before_action :set_user_system, only: [:show, :edit, :update, :destroy]

  # GET /user/systems
  # GET /user/systems.json
  def index
    @user_systems = User::System.all
  end

  # GET /user/systems/1
  # GET /user/systems/1.json
  def show
  end

  # GET /user/systems/new
  def new
    @user_system = User::System.new
  end

  # GET /user/systems/1/edit
  def edit
  end

  # POST /user/systems
  # POST /user/systems.json
  def create
    @user_system = User::System.new(user_system_params)

    respond_to do |format|
      if @user_system.save
        format.html { redirect_to @user_system, notice: 'System was successfully created.' }
        format.json { render :show, status: :created, location: @user_system }
      else
        format.html { render :new }
        format.json { render json: @user_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user/systems/1
  # PATCH/PUT /user/systems/1.json
  def update
    respond_to do |format|
      if @user_system.update(user_system_params)
        format.html { redirect_to @user_system, notice: 'System was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_system }
      else
        format.html { render :edit }
        format.json { render json: @user_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user/systems/1
  # DELETE /user/systems/1.json
  def destroy
    @user_system.destroy
    respond_to do |format|
      format.html { redirect_to user_systems_url, notice: 'System was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_system
      @user_system = User::System.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_system_params
      params[:user_system]
    end
end
