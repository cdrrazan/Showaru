class LaunchSettingsController < ApplicationController
  before_action :set_launch_setting, only: %i[ show edit update destroy ]

  # GET /launch_settings or /launch_settings.json
  def index
    @launch_settings = LaunchSetting.all
  end

  # GET /launch_settings/1 or /launch_settings/1.json
  def show
  end

  # GET /launch_settings/new
  def new
    @launch_setting = LaunchSetting.new
  end

  # GET /launch_settings/1/edit
  def edit
  end

  # POST /launch_settings or /launch_settings.json
  def create
    @launch_setting = LaunchSetting.new(launch_setting_params)

    respond_to do |format|
      if @launch_setting.save
        format.html { redirect_to @launch_setting, notice: "Launch setting was successfully created." }
        format.json { render :show, status: :created, location: @launch_setting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @launch_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /launch_settings/1 or /launch_settings/1.json
  def update
    respond_to do |format|
      if @launch_setting.update(launch_setting_params)
        format.html { redirect_to @launch_setting, notice: "Launch setting was successfully updated." }
        format.json { render :show, status: :ok, location: @launch_setting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @launch_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /launch_settings/1 or /launch_settings/1.json
  def destroy
    @launch_setting.destroy!

    respond_to do |format|
      format.html { redirect_to launch_settings_path, status: :see_other, notice: "Launch setting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_launch_setting
      @launch_setting = LaunchSetting.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def launch_setting_params
      params.fetch(:launch_setting, {})
    end
end
