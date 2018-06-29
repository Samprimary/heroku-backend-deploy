require 'rails_helper'

RSpec.describe "Raiders", type: :request do
  describe "GET /raiders" do
    it "works! (now write some real specs)" do
      get raiders_path
      expect(response).to have_http_status(200)
    end
  end
end
