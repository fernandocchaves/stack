class User < ApplicationRecord
    validates_presence_of :email, :name

    has_many :questions
    has_many :anwsers
    has_many :votes

    def self.find_or_create_from_auth_hash(oauth_hash)
        user = User.find_by(:email => oauth_hash['info']['email']);

        if !user
            user = User.new
            user.name = oauth_hash['info']['name']
            user.email = oauth_hash['info']['email']
            user.image_url = oauth_hash['info']['image']

            user.save
        end
        
        user
    end
end
