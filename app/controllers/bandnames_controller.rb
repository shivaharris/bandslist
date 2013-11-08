class BandnamesController < ApplicationController
  before_action :set_bandname, only: [:show, :edit, :update, :destroy]

  # GET /bandnames
  # GET /bandnames.json
  def index
    @bandnames = Bandname.all
  end

  # GET /bandnames/1
  # GET /bandnames/1.json
  def show
  end

  # GET /bandnames/new
  def new
    @bandname = Bandname.new
  end

  # GET /bandnames/1/edit
  def edit
  end

  # POST /bandnames
  # POST /bandnames.json
  def create
    @bandname = Bandname.new(bandname_params)

    respond_to do |format|
      if @bandname.save
        format.html { redirect_to @bandname, notice: 'Bandname was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bandname }
      else
        format.html { render action: 'new' }
        format.json { render json: @bandname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bandnames/1
  # PATCH/PUT /bandnames/1.json
  def update
    respond_to do |format|
      if @bandname.update(bandname_params)
        format.html { redirect_to @bandname, notice: 'Bandname was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bandname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bandnames/1
  # DELETE /bandnames/1.json
  def destroy
    @bandname.destroy
    respond_to do |format|
      format.html { redirect_to bandnames_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bandname
      @bandname = Bandname.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bandname_params
      params.require(:bandname).permit(:bandname, :albumname)
    end
end
