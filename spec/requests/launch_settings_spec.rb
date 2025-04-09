require 'rails_helper'

RSpec.describe "LaunchSettings", type: :request do
  describe "GET /launch_settings" do
    it "works! (now write some real specs)" do
      get launch_settings_path
      expect(response).to have_http_status(200)
    end
  end
end
