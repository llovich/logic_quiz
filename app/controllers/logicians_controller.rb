class LogiciansController < ApplicationController
  before_action :set_logician, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!

  # GET /logicians
  # GET /logicians.json
  def index
    @logicians = Logician.all
  end

  # GET /logicians/1
  # GET /logicians/1.json
  def show
  end

  # GET /logicians/new
  def new
    @logician = Logician.new
  end

  # GET /logicians/1/edit
  def edit
  end

  # POST /logicians
  # POST /logicians.json
  def create
    @logician = Logician.new(logician_params)

    respond_to do |format|
      if @logician.save
        format.html { redirect_to @logician, notice: 'Logician was successfully created.' }
        format.json { render :show, status: :created, location: @logician }
      else
        format.html { render :new }
        format.json { render json: @logician.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /logicians/1
  # PATCH/PUT /logicians/1.json
  def update
    respond_to do |format|
      if @logician.update(logician_params)
        format.html { redirect_to @logician, notice: 'Logician was successfully updated.' }
        format.json { render :show, status: :ok, location: @logician }
      else
        format.html { render :edit }
        format.json { render json: @logician.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logicians/1
  # DELETE /logicians/1.json
  def destroy
    @logician.destroy
    respond_to do |format|
      format.html { redirect_to logicians_url, notice: 'Logician was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logician
      @logician = Logician.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def logician_params
      params.require(:logician).permit(:first_name, :last_name, :hint1, :hint2, :hint3, :hint, :difficulty_level, :bio, :drawing, :photo)
    end
end
