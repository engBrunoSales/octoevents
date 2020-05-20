json.issues @issues.each do |issue|
  json.action issue.action
  json.created_at issue.created_at
  json.updated_at issue.updated_at
  json.id issue.id_git
  json.node_id issue.node_id
  json.url issue.url
  json.html_url issue.html_url
  json.number issue.number
end
