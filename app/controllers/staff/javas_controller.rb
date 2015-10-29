module Staff
  class JavasController < Base
    before_action :set_java, only: [:show, :edit, :update, :destroy]

    # GET /javas
    # GET /javas.json
    def index
      @javas = Java.all
      @javas = @javas.page(params[:page])
    end

    # GET /javas/1
    # GET /javas/1.json
    def show
    end

    # GET /javas/new
    def new
      @java = Java.new
    end

    # GET /javas/1/edit
    def edit
    end

    # POST /javas
    # POST /javas.json
    def create
      @java = Java.new(java_params)

      respond_to do |format|
        if @java.save
          format.html { redirect_to @java, notice: 'Java was successfully created.' }
          format.json { render :show, status: :created, location: @java }
        else
          format.html { render :new }
          format.json { render json: @java.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /javas/1
    # PATCH/PUT /javas/1.json
    def update
      respond_to do |format|
        if @java.update(java_params)
          format.html { redirect_to @java, notice: 'Java was successfully updated.' }
          format.json { render :show, status: :ok, location: @java }
        else
          format.html { render :edit }
          format.json { render json: @java.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /javas/1
    # DELETE /javas/1.json
    def destroy
      @java.destroy
      respond_to do |format|
        format.html { redirect_to javas_url, notice: 'Java was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_java
        @java = Java.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def java_params
        params[:java]
      end
  end
end