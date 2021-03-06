class User

    attr_reader :username

    def initialize(username)
        @username = username
    end

    def tweets
        # returns array of all tweets belonging to this User

        # look through all the tweets
        # if the tweet's user is the one we are looking for
        # put it in an array
        # return the array
        Tweet.all.select {|tweet| tweet.user == self}
    end

    def post_tweet(message)
        #post_tweet` that takes a message, creates a new tweet, 
        #and adds it to the user's tweet collection
        Tweet.new(message, self)
    end
end

# soda_mom = User.new("Soda Mom")
# soda_mom.post_tweet("I love Dr Pepper")