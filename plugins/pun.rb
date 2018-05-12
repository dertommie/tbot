module Pun
  extend Discordrb::Commands::CommandContainer

  $bot.command :pun do |event|
    result = File.readlines("pun.txt").sample.chomp
    event.respond("*#{result}*")
  end

end