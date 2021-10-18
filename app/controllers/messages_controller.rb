class MessagesController < ApplicationController

    def create
        
        @message = Message.create user: current_user,
                                           message: params.dig(:message, :message)
        ActionCable.server.broadcast("doggo", @message )

    end

end
