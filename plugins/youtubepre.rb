module Youtubepre
  extend Discordrb::Commands::CommandContainer

  $bot.command :rammstein do |event|
    event.respond 'Du hast mich gefragt und ich hab nichts gesagt
Willst du bis der Tod uns scheidet
Treue sein für alle Tage'
    event.respond 'https://www.youtube.com/watch?v=W3q8Od5qJio'
  end

  $bot.command :wood do |event|
    event.send_message 'https://www.youtube.com/watch?v=dP9Wp6QVbsk'
  end


  $bot.command :vitas do |event|
    event.respond 'https://www.youtube.com/watch?v=tVj0ZTS4WF4'
  end


  $bot.command :reich do |event|
    event.respond 'https://www.youtube.com/watch?v=b-a81MIn-Zk'
  end


  $bot.command :uber do |event|
    event.respond 'https://www.youtube.com/watch?v=xEtCxnJq-Ag'
  end


  $bot.command :soviet do |event|
    event.respond 'https://www.youtube.com/watch?v=U06jlgpMtQs'
  end


end