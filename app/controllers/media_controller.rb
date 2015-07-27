class MediaController < ApplicationController
  respond_to :html, :xml, :json, :atom, :rss
  # before_filter :sort_by_pillar
  # before_filter :sort_by_media_type  
  before_action :set_medium, only: [:show, :edit, :update, :destroy]

  def index
  	@media = Medium.search(params[:query]).order('media.updated_at DESC')
  	respond_to do |format|
  	  format.html
  	  format.json { render json: @media}
  	  format.xml
  	  format.rss
  	  format.atom
  	end
  end

  def show
  	@medium = Medium.find(params[:id])
  	@media = Medium.search(params[:query]).where('media.title != ?', @medium.title).where(pillar: @medium.pillar)
  	respond_to do |format|
  	  format.html { render 'show' }
  	  format.json { render json: @medium }
  	  format.xml { render xml: @medium }
  	end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_medium
      @medium = Medium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medium_params
      params.require(:medium).permit(:title, :media_type, :pillar, :link)
    end

  def sort_by_pillar
  	# @media = Medium.order_by(:pillar desc)
  end

  def sort_by_media_type
  	# @media = Medium.order_by(:media_type desc)
  end
end
