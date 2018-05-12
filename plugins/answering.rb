module Answering
  extend Discordrb::Commands::CommandContainer

  $bot.command :cyka do |event|
    event.respond 'сука блять, Иди Нахуи'
  end
  $bot.command :HH do |event|
    event.respond 'Aufmachen, Gestapo!'
  end

end