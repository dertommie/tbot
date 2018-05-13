module Eval
  extend Discordrb::Commands::CommandContainer

  $bot.command(:eval) do |event, *code|
    break unless event.user.id == 346288821115289602

    begin
      event.channel.send_embed do |e|
        e.title = '**Eval**'
      evaluated = eval code.join(' ')
	  puts '--BEGIN EVAL--'
	  puts evaluated
	  puts '--END EVAL--'
	  e.description = evaluated
	  e.color = '00ff00'
    end
    rescue StandardError => f
      event.channel.send_embed do |e|
        e.title = '**Evaluation Failed!**'

        e.description = f.to_s
        e.color = 'FF0000'
        end
    end
  end

  $bot.command(:s_eval) do |event, *code|
    break unless event.user.id == 346288821115289602

    begin
      evaluated = eval code.join(' ')
      puts '--BEGIN EVAL--'
      puts evaluated
      puts '--END EVAL--'
      event.send_message evaluated
    rescue
      '**Error while evaluating!**'
    end
  end
end
