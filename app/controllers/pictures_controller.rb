require 'pp'

class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]

  def index
    @pictures = Picture.all
  end

  def show
  end

  def new
    pp "PARAMETERS ARE: #{picture_params}"
    @picture = Picture.new()
    @picture.presentation_id = picture_params[:presentation_id]
  end

  def create
    @picture = Picture.new(params)
    @picture.presentation_id = picture_params[:presentation_id]

    respond_to do |format|
      if @picture.save
        format.html { redirect_to @picture, notice: 'Picture was successfully created.' }
        format.json { render :show, status: :created, location: @picture }
      else
        format.html { render :new }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @picture.update(presentation_params)
        format.html { redirect_to @picture, notice: 'Presentation was successfully updated.' }
        format.json { render :show, status: :ok, location: @picture }
      else
        format.html { render :edit }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @picture.destroy
    respond_to do |format|
      format.html { redirect_to presentations_url, notice: 'Presentation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_picture
      @picture = Picture.find(params[:id])
    end
    def picture_params
      params.require(:picture).permit(:title, :picture, :presentation_id)
    end
end
