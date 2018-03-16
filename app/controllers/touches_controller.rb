class TouchesController < ApplicationController
  before_action :set_touch, only: [:show, :edit, :update, :destroy]

  # GET /touches
  # GET /touches.json
  def index
    @touches = Touch.all
  end

  # GET /touches/1
  # GET /touches/1.json
  def show
  end

  # GET /touches/new
  def new
    @touch = Touch.new
  end

  # GET /touches/1/edit
  def edit
  end

  # POST /touches
  # POST /touches.json
  def create
    @touch = Touch.new(touch_params)

    respond_to do |format|
      if @touch.save
        format.html { redirect_to @touch, notice: 'Touch was successfully created.' }
        format.json { render :show, status: :created, location: @touch }
      else
        format.html { render :new }
        format.json { render json: @touch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /touches/1
  # PATCH/PUT /touches/1.json
  def update
    respond_to do |format|
      if @touch.update(touch_params)
        format.html { redirect_to @touch, notice: 'Touch was successfully updated.' }
        format.json { render :show, status: :ok, location: @touch }
      else
        format.html { render :edit }
        format.json { render json: @touch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /touches/1
  # DELETE /touches/1.json
  def destroy
    @touch.destroy
    respond_to do |format|
      format.html { redirect_to touches_url, notice: 'Touch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_touch
      @touch = Touch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def touch_params
      params.require(:touch).permit(:name, :way_of_contact, :success, :date_touched)
    end
end
