class BdaysController < ApplicationController
  before_action :set_bday, only: [:show, :edit, :update, :destroy]

  # GET /bdays
  # GET /bdays.json
  def index
    @bdays = Bday.all
  end

  # GET /bdays/1
  # GET /bdays/1.json
  def show
  end

  # GET /bdays/new
  def new
    @bday = Bday.new
  end

  # GET /bdays/1/edit
  def edit
  end

  # POST /bdays
  # POST /bdays.json
  def create
    @bday = Bday.new(bday_params)

    respond_to do |format|
      if @bday.save
        format.html { redirect_to @bday, notice: 'Bday was successfully created.' }
        format.json { render :show, status: :created, location: @bday }
      else
        format.html { render :new }
        format.json { render json: @bday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bdays/1
  # PATCH/PUT /bdays/1.json
  def update
    respond_to do |format|
      if @bday.update(bday_params)
        format.html { redirect_to @bday, notice: 'Bday was successfully updated.' }
        format.json { render :show, status: :ok, location: @bday }
      else
        format.html { render :edit }
        format.json { render json: @bday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bdays/1
  # DELETE /bdays/1.json
  def destroy
    @bday.destroy
    respond_to do |format|
      format.html { redirect_to bdays_url, notice: 'Bday was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bday
      @bday = Bday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bday_params
      params.require(:bday).permit(:name, :fecha)
    end
end
