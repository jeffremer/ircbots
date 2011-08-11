#!/usr/bin/env ruby

require 'twss'
require 'cinch'

bot = Cinch::Bot.new do
  configure do |c|
    c.nick = "TWSS"
    c.server = "irc.yourdomain.com"
    c.channels = ["#bots", "#bs"]
  end
  
  on :message, /^(.+)/ do |m, message|
    m.reply "That's what she said!" if TWSS(message)
  end
end

bot.start