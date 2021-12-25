# frozen_string_literal: true

class ChannelsController < ApplicationController
  before_action :set_channel, only: %i[show]
  before_action :set_channels, only: %i[index show]

  def index; end

  def show
    render :index
  end

  def new
    @channel = Channel.new
  end

  def create
    @channel = Channel.new(channel_params)

    respond_to do |format|
      if @channel.save
        format.html { redirect_to channel_url(@channel), notice: 'Channel was successfully created.' }
        format.json { render :show, status: :created, location: @channel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @channel.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_channel
    @channel = Channel.find(params[:id])
  end

  def set_channels
    @channels = Channel.order(name: :asc)
  end

  def channel_params
    params.require(:channel).permit(:name)
  end
end
