class SystemInfoViewsController < ApplicationController
  before_action :set_system_info_view, only: [:show, :edit, :update, :destroy]

  # GET /system_info_views
  # GET /system_info_views.json
  def index
    @system_info_views = SystemInfoView.all
  end

  # GET /system_info_views/1
  # GET /system_info_views/1.json
  def show
  end

  # GET /system_info_views/new
  def new
    @system_info_view = SystemInfoView.new
  end

  # GET /system_info_views/1/edit
  def edit
  end

  # POST /system_info_views
  # POST /system_info_views.json
  def create
    @system_info_view = SystemInfoView.new(system_info_view_params)

    respond_to do |format|
      if @system_info_view.save
        format.html { redirect_to @system_info_view, notice: 'System info view was successfully created.' }
        format.json { render :show, status: :created, location: @system_info_view }
      else
        format.html { render :new }
        format.json { render json: @system_info_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /system_info_views/1
  # PATCH/PUT /system_info_views/1.json
  def update
    respond_to do |format|
      if @system_info_view.update(system_info_view_params)
        format.html { redirect_to @system_info_view, notice: 'System info view was successfully updated.' }
        format.json { render :show, status: :ok, location: @system_info_view }
      else
        format.html { render :edit }
        format.json { render json: @system_info_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_info_views/1
  # DELETE /system_info_views/1.json
  def destroy
    @system_info_view.destroy
    respond_to do |format|
      format.html { redirect_to system_info_views_url, notice: 'System info view was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system_info_view
      @system_info_view = SystemInfoView.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def system_info_view_params
      params.require(:system_info_view).permit(:name, :number, :os_info_id, :java_info_id, :ap_server_info_id)
    end
end
