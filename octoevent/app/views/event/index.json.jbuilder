json.events @events.each do |event|
  json.action event.action
  json.type event.event_type.name
  json.id event.id_git
  json.node_id event.node_id
  json.url event.url
  json.html_url event.html_url
  json.number event.number
  json.created_at event.created_at
  json.updated_at event.updated_at
end