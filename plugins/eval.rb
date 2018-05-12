module Eval
  extend Discordrb::Commands::CommandContainer

  $bot.command(:eval) do |event, *code|
    break unless event.user.id == 346288821115289602

    begin
      eval code.join(' ')
    rescue
      '**Error while evaluating!**'
    end
      end
    end
