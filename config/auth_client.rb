require 'twitter'

def auth_twitter
    Twitter::REST::Client.new do |config|
        config.consumer_key         = <mY0rVhS5o3sU4rOympjXv7SnJ>
        config.consumer_secret      = <1rCz2NxPdejduTriyQ7UAOQYegG4AIV9bCwbmuF4G42kk3kJBV>
        config.access_token         = <113392643-ibgl70kFZxlmKGEIaoUEm6WEz3nTRMDxLPBmQwcp>
        config.access_token_secret  = <xhc74MHq8e3qzTTsCJN0Ufbs2UV6UvktFJo7nvibUtLb5>
    end
end