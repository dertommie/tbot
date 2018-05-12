module Wisdom
  extend Discordrb::Commands::CommandContainer

  $bot.command :wisdom do |event|
    result = File.readlines("wisdom.txt").sample.chomp
    event.respond("*#{result}*")
  end

end