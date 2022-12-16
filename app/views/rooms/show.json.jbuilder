json.id @room.id
json.name @room.name
json.description @room.description
json.image_url @room.image_url
json.youtube_url @room.youtube_url
json.price @room.price
json.comments @room.comments do |comment|
  json.comment comment.content

end
