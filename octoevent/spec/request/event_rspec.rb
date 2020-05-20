require 'rails_helper'

RSpec.describe "Event request", type: :request   do

  it "responds successfully with an HTTP 200 status code" do
    get :index
    expect(response).to be_success
  end

  it "renders the index template" do
    #get :index
    #expect(response).to render_template("index")
    pending
  end
  
  it "loads all of the events into @event" do
    #event1, event2 = Event.create!, Event.create!
    #get :index
    #expect(assigns(:posts)).to match_array([post1, post2])
    pending
  end

end
