class User < ApplicationRecord
  def self.find_or_create_from_auth(auth)
    provider = auth[:provider]
    uid = auth[:uid]
    name = auth[:info][:name]
    image = auth[:info][:image]
    twitter_id = auth[:info][:nickname]

    self.find_or_create_by(provider: provider, uid: uid) do |user|
      user.name = name
      user.image = image
      user.twitter_id = twitter_id
    end
  end
end