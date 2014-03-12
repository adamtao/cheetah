class CheetahMailException < Exception
end

class CheetahMailMessagingException < CheetahMailException
end

class CheetahMailAuthorizationException < CheetahMailMessagingException
end

class CheetahMailTemporaryException < CheetahMailMessagingException
end

class CheetahMailPermanentException < CheetahMailMessagingException
end
