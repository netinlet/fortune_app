require 'spec_helper'

describe FortunesController do

  describe "GET index" do
    context "when JSON" do
      before(:each) do
        @fortune = Fortune.create(:message => "Rand Fortune", :category => "a")
        get :index, format: :json
      end

      specify{ response.status.should eq(200) }
      specify{ assigns(:fortune).should eq(@fortune) }
      specify{ response.content_type.should eq("application/json") }
      specify{ expect(JSON.parse(response.body)).to eq({"message" => "Rand Fortune", "category" => "a"}) }
    end

    context "when HTML" do
      before(:each) do
        @fortune = Fortune.create(:message => "Rand Fortune", :category => "a")
        get :index
      end

      specify{ response.status.should eq(200) }
      specify{ assigns(:fortune).should eq(@fortune) }
      specify{ response.content_type.should eq("text/html") }
      specify{ response.should render_template(:index) }
    end
  end

end
