require 'rails_helper'

RSpec.describe "Healths", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/health/index"

      # 'response' is a special object which contains HTTP response received after a request is sent
      # response.body is the body of the HTTP response, which here contain a JSON string
      expect(response.body).to eq ('{"status":"online"}')

      expect(response).to have_http_status(:success)
    end
  end

end
