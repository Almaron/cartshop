class User < ActiveRecord::Base

  def self.find_or_create_from_provider(hash)
    unless (user = self.find_by(uid:hash["uid"]))
      user = User.create(name: hash["info"]["name"], email: hash["info"]["email"], uid: hash["uid"])
    end
    user
  end

end
