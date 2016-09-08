class WifiDevicesController < WebApplicationController
  before_action :set_wifi_device, only: [:show, :edit, :update, :destroy]

  # GET /wifi_devices
  # GET /wifi_devices.json
  def index
    @wifi_devices = WifiDevice.all
  end

  # GET /wifi_devices/1
  # GET /wifi_devices/1.json
  def show
  end

  # GET /wifi_devices/new
  def new
    @wifi_device = WifiDevice.new
  end

  # GET /wifi_devices/1/edit
  def edit
  end

  # POST /wifi_devices
  # POST /wifi_devices.json
  def create
    @wifi_device = WifiDevice.new(wifi_device_params)

    respond_to do |format|
      if @wifi_device.save
        format.html { redirect_to @wifi_device, notice: 'Wifi device was successfully created.' }
        format.json { render :show, status: :created, location: @wifi_device }
      else
        format.html { render :new }
        format.json { render json: @wifi_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wifi_devices/1
  # PATCH/PUT /wifi_devices/1.json
  def update
    respond_to do |format|
      if @wifi_device.update(wifi_device_params)
        format.html { redirect_to @wifi_device, notice: 'Wifi device was successfully updated.' }
        format.json { render :show, status: :ok, location: @wifi_device }
      else
        format.html { render :edit }
        format.json { render json: @wifi_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wifi_devices/1
  # DELETE /wifi_devices/1.json
  def destroy
    @wifi_device.destroy
    respond_to do |format|
      format.html { redirect_to wifi_devices_url, notice: 'Wifi device was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wifi_device
      @wifi_device = WifiDevice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wifi_device_params
      params.require(:wifi_device).permit(:park_id, :alerted)
    end
end
