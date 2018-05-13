module Eval
  extend Discordrb::Commands::CommandContainer

  $bot.command(:eval) do |event, *code|
    break unless event.user.id == 346288821115289602

    begin
	event.channel.send_embed do |e|
	e.title = '**Eval**'
      evaluated = eval code.join(' ')
	  puts '--BEGIN EVAL--'
	  puts evaluated.to_s
	  puts '--END EVAL--'
	  e.description = evaluated.to_s
	  e.color = '00ff00'
    rescue
	
    e.description = '**Error while evaluating!**'
	e.color = 'FF0000'
    end
      end
    end
