class PagesController < ApplicationController

    def home
        @message = Message.new
        @messages = Message.all
    end

end