require 'barby'
require 'barby/barcode/code_128'
require 'barby/outputter/png_outputter'

class BarcodeController < ActionController::Base

  def generate
    #@barcode = Barby::Code128B.new(params[:barcode]).to_png
    respond_to do |format|
      format.png do
        send_data Barby::Code128B.new(params[:barcode]).to_png, type: "image/png", disposition: "inline"
      end
    end
  end

end
