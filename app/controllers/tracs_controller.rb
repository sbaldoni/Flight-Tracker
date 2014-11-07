class TracsController < ApplicationController
  before_action :set_trac, only: [:show, :edit, :update, :destroy]

  # GET /tracs
  # GET /tracs.json
  def index
    @tracs = Trac.all
  end

  # GET /tracs/1
  # GET /tracs/1.json
  def show
  end

  # GET /tracs/new
  def new
    @trac = Trac.new
  end

  # GET /tracs/1/edit
  def edit
  end

  # POST /tracs
  # POST /tracs.json
  def create
    @trac = Trac.new(trac_params)

    respond_to do |format|
      if @trac.save
        format.html { redirect_to @trac, notice: 'Trac was successfully created.' }
        format.json { render :show, status: :created, location: @trac }
      else
        format.html { render :new }
        format.json { render json: @trac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tracs/1
  # PATCH/PUT /tracs/1.json
  def update
    respond_to do |format|
      if @trac.update(trac_params)
        format.html { redirect_to @trac, notice: 'Trac was successfully updated.' }
        format.json { render :show, status: :ok, location: @trac }
      else
        format.html { render :edit }
        format.json { render json: @trac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tracs/1
  # DELETE /tracs/1.json
  def destroy
    @trac.destroy
    respond_to do |format|
      format.html { redirect_to tracs_url, notice: 'Trac was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trac
      @trac = Trac.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trac_params
      params.require(:trac).permit(:flight, :airline)
    end
end
