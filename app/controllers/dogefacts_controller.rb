class DogefactsController < ApplicationController
  before_action :set_dogefact, only: [:show, :edit, :update, :destroy]

  # GET /dogefacts
  # GET /dogefacts.json
  def index
    @dogefacts = Dogefact.all
  end

  # GET /dogefacts/1
  # GET /dogefacts/1.json
  def show
  end

  # GET /dogefacts/new
  def new
    @dogefact = Dogefact.new
  end

  # GET /dogefacts/1/edit
  def edit
  end

  # POST /dogefacts
  # POST /dogefacts.json
  def create
    @dogefact = Dogefact.new(dogefact_params)

    respond_to do |format|
      if @dogefact.save
        format.html { redirect_to @dogefact, notice: 'Dogefact was successfully created.' }
        format.json { render :show, status: :created, location: @dogefact }
      else
        format.html { render :new }
        format.json { render json: @dogefact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dogefacts/1
  # PATCH/PUT /dogefacts/1.json
  def update
    respond_to do |format|
      if @dogefact.update(dogefact_params)
        format.html { redirect_to @dogefact, notice: 'Dogefact was successfully updated.' }
        format.json { render :show, status: :ok, location: @dogefact }
      else
        format.html { render :edit }
        format.json { render json: @dogefact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dogefacts/1
  # DELETE /dogefacts/1.json
  def destroy
    @dogefact.destroy
    respond_to do |format|
      format.html { redirect_to dogefacts_url, notice: 'Dogefact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dogefact
      @dogefact = Dogefact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dogefact_params
      params.require(:dogefact).permit(:context)
    end
end
