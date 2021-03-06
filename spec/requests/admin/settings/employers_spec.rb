# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Admin::Settings::Employers", type: :request do
  describe "GET /admin/parametres/employers" do
    it "works! (now write some real specs)" do
      admin = create(:administrator)
      admin.confirm
      sign_in admin
      get admin_settings_employers_path
      expect(response).to have_http_status(200)
    end
  end
end
