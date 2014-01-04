require 'spec_helper'

describe FortunesController do

  describe "GET index" do
    before(:each) do
      @fortune = Fortune.create(:message => "Rand Fortune", :category => "a")
      get :index
    end

    specify{ response.status.should eq(200) }
    specify{ assigns(:fortune).should eq(@fortune) }
    specify{ expect(response.body).to eq("Rand Fortune") }
  end

end
