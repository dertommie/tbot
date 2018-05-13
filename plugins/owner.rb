module Owner
  extend Discordrb::Commands::CommandContainer

  $bot.command :kill do |event|
    break unless event.user.id == CONFIG['owner_id']
    bot.send_message(event.channel.id, 'Im shutting down!')
    sleep 3
    exit
  end

  $bot.command :prune do |event, *args|
    break unless event.user.id == 346288821115289602
    var1=args.join(' ')
    var2=var1.to_i
    var3=var2+1
    event.channel.prune(var3)
  end


end