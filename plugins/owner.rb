module Owner
  extend Discordrb::Commands::CommandContainer

  $bot.command :kill do |event|
    break unless event.user.id == CONFIG['owner_id']
    bot.send_message(event.channel.id, 'Im shutting down!')
    sleep 3
    exit
  end


end