json.array!(@forum_replies) do |forum_reply|
  json.extract! forum_reply, :id, :title, :status, :forum_thread, :forum_reply_id
  json.url forum_reply_url(forum_reply, format: :json)
end
