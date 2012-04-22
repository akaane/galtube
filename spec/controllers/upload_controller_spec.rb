require 'spec_helper'

describe UploadController do

  describe "GET 'covers'" do
    it "returns http success" do
      get 'covers'
      response.should be_success
    end
  end

  describe "GET 'torrent'" do
    it "returns http success" do
      get 'torrent'
      response.should be_success
    end
  end

end
