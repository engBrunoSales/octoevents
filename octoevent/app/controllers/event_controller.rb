class EventController < ApplicationController

  def index
    @events = Event.all
  end

  def create
    action = params[:action]
    issue = params[:issue]
    if issue
      Event.create('Issue', issue, action)
    end

    comment = params[:comment]
    if comment
      Event.create('Comment', comment, action)
    end

    repository = params[:repository]
    if repository
      Event.create('Repository', repository, action)
    end 

    sender = params[:sender]
    if sender
      Event.create('Sender', sender, action)
    end

    def issue
      puts 'Entrei na Issue'
      event_type = EventType.find_by(name: 'Issue')
      @issues = Event.where(number: params[:id], event_type: event_type)
                .select('*')
    end


  end
end
