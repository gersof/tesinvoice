class TestbootsController < ApplicationController
  before_action :set_testboot, only: [:show, :edit, :update, :destroy]

  # GET /testboots
  # GET /testboots.json
  def index
    @testboots = Testboot.all
  end

  # GET /testboots/1
  # GET /testboots/1.json
  def show
  end

  # GET /testboots/new
  def new
    @testboot = Testboot.new
  end

  # GET /testboots/1/edit
  def edit
  end

  # POST /testboots
  # POST /testboots.json
  def create
    @testboot = Testboot.new(testboot_params)

    respond_to do |format|
      if @testboot.save
        format.html { redirect_to @testboot, notice: 'Testboot was successfully created.' }
        format.json { render :show, status: :created, location: @testboot }
      else
        format.html { render :new }
        format.json { render json: @testboot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testboots/1
  # PATCH/PUT /testboots/1.json
  def update
    respond_to do |format|
      if @testboot.update(testboot_params)
        format.html { redirect_to @testboot, notice: 'Testboot was successfully updated.' }
        format.json { render :show, status: :ok, location: @testboot }
      else
        format.html { render :edit }
        format.json { render json: @testboot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testboots/1
  # DELETE /testboots/1.json
  def destroy
    @testboot.destroy
    respond_to do |format|
      format.html { redirect_to testboots_url, notice: 'Testboot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testboot
      @testboot = Testboot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testboot_params
      params.require(:testboot).permit(:name)
    end
end
