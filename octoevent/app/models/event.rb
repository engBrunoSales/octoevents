class Event < ApplicationRecord
  belongs_to :event_type

  def Event.create(name_event, data_event, action)
    event_type = EventType.find_by(name: name_event)
    event = Event.new
    event.id_git = data_event['id']
    event.node_id = data_event['node_id']
    event.action = action
    event.url = data_event['url']
    event.html_url = data_event['html_url']
    event.event_type = event_type
    event.number = data_event['number'] if data_event['number']
    event.created_at = data_event['created_at'] if data_event['created_at']
    event.updated_at = data_event['updated_at'] if data_event['updated_at']
    event.save
  end
end
