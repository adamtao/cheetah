module CheetahMail
  class NullMessenger < Messenger
    def do_send(message)
      # do nothing
    end
  end
end
