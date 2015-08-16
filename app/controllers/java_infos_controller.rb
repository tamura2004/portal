class JavaInfosController < ApplicationController

  def new
    @java_info = JavaInfo.new
  end

  def create
    @java_info = JavaInfo.new(java_info_params)

    if rand < 0.5
      render :ok
    else
      render :ng
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_java_info
      @java_info = Javainfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def java_info_params
      params.require(:java_info).permit(:osName_id, :cpuArch_id, :javaName_id, :javaVersion_id)
    end
end
