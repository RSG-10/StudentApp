json.extract! studprofile, :id, :age, :email, :address, :mobilenumber, :image, :studmark_id, :created_at, :updated_at
json.url studprofile_url(studprofile, format: :json)
