class EtudesController < ApplicationController
  before_action :set_etude, only: [:show, :edit, :update, :destroy]

  # GET /etudes
  # GET /etudes.json
  def index
    @etudes = Etude.all
  end

  # GET /etudes/1
  # GET /etudes/1.json
  def show
  end

  # GET /etudes/new
  def new
    @etude = Etude.new
  end

  # GET /etudes/1/edit
  def edit
  end

  # POST /etudes
  # POST /etudes.json
  def create
    @etude = Etude.new(etude_params)

    respond_to do |format|
      if @etude.save
        format.html { redirect_to @etude, notice: 'Etude was successfully created.' }
        format.json { render :show, status: :created, location: @etude }
      else
        format.html { render :new }
        format.json { render json: @etude.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etudes/1
  # PATCH/PUT /etudes/1.json
  def update
    respond_to do |format|
      if @etude.update(etude_params)
        format.html { redirect_to @etude, notice: 'Etude was successfully updated.' }
        format.json { render :show, status: :ok, location: @etude }
      else
        format.html { render :edit }
        format.json { render json: @etude.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etudes/1
  # DELETE /etudes/1.json
  def destroy
    @etude.destroy
    respond_to do |format|
      format.html { redirect_to etudes_url, notice: 'Etude was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etude
      @etude = Etude.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def etude_params
      params.require(:etude).permit(:SecteurEtudes, :Niveau, :DateDebut, :DateCompletion, :client_id, :institution_id)
    end
end
