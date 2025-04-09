require 'rails_helper'

RSpec.describe "SiteSettings", type: :request do
  describe "GET /site_settings" do
    it "works! (now write some real specs)" do
      get site_settings_path
      expect(response).to have_http_status(200)
    end
  end
end
