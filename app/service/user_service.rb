class UserService
    
    def find(user_id)
        User.find(user_id)
    end

    def oauth_login(oauht_hash)
        User.find_or_create_from_auth_hash(oauht_hash)
    end

end