class TempConverterController < ApplicationController

  def index

  end

  def convert
    @tempc = params[:tempc].to_f
    @tempf = (@tempc * 1.8 +32)
  end
end
