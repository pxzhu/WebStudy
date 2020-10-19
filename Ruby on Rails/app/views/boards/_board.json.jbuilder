json.extract! board, :id, :content, :title, :created_at, :updated_at
json.url board_url(board, format: :json)
