class AdvertisementsController < ApplicationController
  before_action :set_advertisement, only: [:show, :edit, :update, :destroy]

  # GET /advertisements
  def index
    @advertisements = Advertisement.all
    if @advertisements.empty?
      flash[:alert] = "No advertisements found."
    end
  end

  # GET /advertisements/1
  def show
  end

  # GET /advertisements/new
  def new
    @advertisement = Advertisement.new
  end

  # POST /advertisements
  def create
    @advertisement = Advertisement.new(advertisement_params)

    if @advertisement.save
      redirect_to @advertisement, notice: 'Advertisement was successfully created.'
    else
      render :new, alert: 'Failed to create advertisement.'
    end
  end

  # GET /advertisements/1/edit
  def edit
  end

  # PATCH/PUT /advertisements/1
  def update
    if @advertisement.update(advertisement_params)
      redirect_to @advertisement, notice: 'Advertisement was successfully updated.'
    else
      render :edit, alert: 'Failed to update advertisement.'
    end
  end

  # DELETE /advertisements/1
  def destroy
    @advertisement.destroy
    redirect_to advertisements_url, notice: 'Advertisement was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advertisement
      @advertisement = Advertisement.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to advertisements_url, alert: 'Advertisement not found.'
    end

    # Only allow a list of trusted parameters through.
    def advertisement_params
      params.require(:advertisement).permit(:title, :content, :image_url, :link_url, :start_date, :end_date, :price)
    end
end
