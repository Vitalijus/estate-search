require 'rails_helper'
require "pry"

RSpec.describe "Pages", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/pages/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "should respond to js" do
      VCR.use_cassette("dog_api/show_action") do
        @params = { breed: 'Beagle' }
        get "/pages/show", params: @params, xhr: true
        expect(response.content_type).to eq("text/javascript; charset=utf-8")
      end
    end
  end
end
