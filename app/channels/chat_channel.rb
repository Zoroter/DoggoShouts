class ChatChannel < ApplicationCable::Channel
    def subscribed
        stream_from "doggo"
    end
  end
  