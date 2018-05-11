require 'discordrb'
require 'yaml'
require 'date'


CONFIG = YAML.load_file('config.yaml')



bot = Discordrb::Commands::CommandBot.new token: CONFIG['token'], prefix:'&', client_id: 421768323773235211, help_command: false



bot.message(contains: 'Zelent') do |event|
  x=rand(1..5)
  if x<=2
  event.send_message 'Nie polecam Zelenta'
    else 0
  end
  end

bot.message(contains: 'zelent') do |event|
  x=rand(1..5)
  if x<=2
  event.send_message 'Nie polecam Zelenta'
    else 0
  end
  end


bot.message(contains: 'kurs') do |event|
  x=rand(1..5)
  if x<=2
  event.send_message 'Nie polecam kursów od Zelenta'
  else 0
  end
  end


bot.message(contains: 'Kurs') do |event|
  x=rand(1..5)
  if x<=2
  event.send_message 'Nie polecam kursów od Zelenta'
  else 0
  end
  end


bot.message(contains: ' Sym ') do |event|
  event.send_message 'SymSymSymSymSym'
end


bot.message(contains: ' sym ') do |event|
  event.send_message 'SymSymSymSymSym'
end


bot.message(with_text: 'Du hast mich') do |event|
  event.respond 'Du hast mich gefragt und ich hab nichts gesagt
Willst du bis der Tod uns scheidet
Treue sein für alle Tage'
  event.respond 'https://www.youtube.com/watch?v=W3q8Od5qJio'
end

bot.command :polandball do |event|
  event.channel.send_embed do |embed|
    embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://vignette.wikia.nocookie.net/polandball/images/7/76/PolandStronkandhappy.png/revision/latest?cb=20171225190506&path-prefix=pl')
  end
end


bot.command :reichtangle do |event|
  event.channel.send_embed do |embed|
    embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://orig00.deviantart.net/6261/f/2015/237/f/e/walfas_custom__reichtangle_by_myonnyanmukyuu-d97662q.png')
  end
end


bot.command :wood do |event|
    event.send_message 'https://www.youtube.com/watch?v=dP9Wp6QVbsk'
end


bot.command :vitas do |event|
  event.respond 'https://www.youtube.com/watch?v=tVj0ZTS4WF4'
end


bot.command :reich do |event|
  event.respond 'https://www.youtube.com/watch?v=b-a81MIn-Zk'
end


bot.command :uber do |event|
  event.respond 'https://www.youtube.com/watch?v=xEtCxnJq-Ag'
end


bot.command :soviet do |event|
  event.respond 'https://www.youtube.com/watch?v=U06jlgpMtQs'
end

bot.command :cyka do |event|
  event.respond 'сука блять, Иди Нахуи'
end
bot.command :HH do |event|
  event.respond 'Aufmachen, Gestapo!'
end

bot.message(with_text: 'Ja') do |event|
  event.respond 'Nein'
end

bot.message(with_text: 'Tak') do |event|
  event.respond 'Nie'
end

bot.message(with_text: 'Nie') do |event|
  event.respond 'Tak'
end

bot.message(with_text: 'Nein') do |event|
  event.respond 'Ja'
end

bot.message(with_text: 'True') do |event|
  event.respond 'False'
end

bot.message(with_text: 'False') do |event|
  event.respond 'True'
end


bot.command :wisdom do |event|
result = File.readlines("wisdom.txt").sample.chomp
event.respond("*#{result}*")
end

bot.command :pun do |event|
  result = File.readlines("pun.txt").sample.chomp
  event.respond("*#{result}*")
end

bot.command :bread do |event|
  event.channel.send_embed do |embed|
    embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://img00.deviantart.net/d05c/i/2013/224/3/7/breadfish_by_zhoolfigure-d6hw1g5.png')
  end
end

  bot.command :nobody do |event|
  event.channel.send_embed do |embed|
    embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://4.bp.blogspot.com/-7sXLalTA0KM/WH2A_gGlYkI/AAAAAAAADdM/vBuPiXeAr7A4jzCYHOhqvnm00UCO9gBygCEw/s1600/1.8.jpg')
  end
end

bot.command :video do |event|
  event.respond'```
&vitas - Vitas
&reich - 3rd Reich anthem
&uber - Über Alles
&soviet - Soviet anthem
&wood - Die Woodys!
```'
end

bot.command :ball_canada do |event|
  event.channel.send_embed do |embed|
    embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://vignette.wikia.nocookie.net/polandball/images/7/7c/Rv.jpg/revision/latest/scale-to-width-down/185?cb=20160227184053&path-prefix=pl')
  end
end

bot.command :ball_brasil do |event|
    event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://vignette.wikia.nocookie.net/polandball/images/5/5d/HUEHUEHUEball.png/revision/latest?cb=20170224112715')
    end
end

bot.command :ball_france do |event|
    event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'http://vignette3.wikia.nocookie.net/polandball/images/f/f2/Franceball.png/revision/latest?cb=20131028164608')
    end
end

bot.command :ball_usa do |event|
    event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://vignette.wikia.nocookie.net/polandballpedia/images/4/4c/USA.jpg/revision/latest?cb=20150821170533&path-prefix=pl')
    end
end

bot.command :ball_netherlands do |event|
    event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://vignette.wikia.nocookie.net/polandball/images/5/56/Victory_Netherlands.png/revision/latest?cb=20160706231112')
    end
end

bot.command :ball_austria do |event|
    event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://vignette.wikia.nocookie.net/polandball/images/f/f4/Osstereich.png/revision/latest/scale-to-width-down/310?cb=20170715134958')
    end
end

bot.command :ball_finland do |event|
    event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://vignette.wikia.nocookie.net/polandball/images/9/92/Finlan.png/revision/latest?cb=20160423154344&path-prefix=pl')
    end
end

bot.command :ball_germany do |event|
  event.channel.send_embed do |embed|
    embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://vignette.wikia.nocookie.net/polandball/images/f/fe/Germanyball_%289%29.png/revision/latest?cb=20160226203616&path-prefix=pl')
  end
end

bot.command :ball_greece do |event|
  event.channel.send_embed do |embed|
    embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://vignette.wikia.nocookie.net/polandball/images/d/d1/Spammer.png/revision/latest?cb=20150730095036&path-prefix=sco')
  end
end

bot.command :ball_hungary do |event|
  event.channel.send_embed do |embed|
    embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://vignette.wikia.nocookie.net/polandball/images/f/fd/Kingdom_of_Hungaryball_%281920-46%29.png/revision/latest?cb=20170926134109&path-prefix=pl')
  end
end

bot.command :ball_norway do |event|
  event.channel.send_embed do |embed|
    embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://vignette.wikia.nocookie.net/polandball/images/5/55/Norwoj.png/revision/latest?cb=20160423152503&path-prefix=pl')
  end
end

bot.command :ball_switzerland do |event|
  event.channel.send_embed do |embed|
    embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://vignette.wikia.nocookie.net/polandball/images/9/96/HDSwissball.jpg/revision/latest/scale-to-width-down/310?cb=20150327083311')
  end
end

bot.command :ball_russia do |event|
  event.channel.send_embed do |embed|
    embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'http://pm1.narvii.com/6603/a0e162870fa39498976a01b7f916f69c30c4877a_00.jpg')
  end
end

bot.command :ball_uk do |event|
  event.channel.send_embed do |embed|
    embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://i.imgur.com/bw3Nwvc.png')
  end
end

bot.command :ball_australia do |event|
  event.channel.send_embed do |embed|
    embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://vignette.wikia.nocookie.net/polandball/images/9/9c/Aus.jpg/revision/latest/scale-to-width-down/310?cb=20170224113048')
  end
end

bot.command :ball_japan do |event|
  event.channel.send_embed do |embed|
    embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://vignette.wikia.nocookie.net/polandball/images/6/6e/Cd.jpg/revision/latest/scale-to-width-down/184?cb=20160229162839&path-prefix=pl')
  end
end

bot.command :ball_skorea do |event|
  event.channel.send_embed do |embed|
    embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://vignette.wikia.nocookie.net/polandball/images/5/52/Corea_del_surball_0.png/revision/latest?cb=20151228233909&path-prefix=pl')
  end
end

bot.command :ball_nkorea do |event|
  event.channel.send_embed do |embed|
    embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://orig00.deviantart.net/63a2/f/2017/189/3/1/north_koreaball_by_countryballman-dbfk1n1.png')
  end
end

bot.command :ball_china do |event|
    event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url:'https://vignette.wikia.nocookie.net/polandball/images/b/bc/Chinaball.png/revision/latest?cb=20170712074736&path-prefix=pl')
    end
end

bot.command :nepal do |event|
    event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url:'https://vignette.wikia.nocookie.net/polandball/images/5/58/Mid-Western_NepalRawr.png/revision/latest?cb=20160126151054')
    end
end

bot.command :cube_kazakhstan do |event|
    event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url:'https://vignette.wikia.nocookie.net/polandball/images/1/15/Kazakh.png/revision/latest?cb=20160228144944&path-prefix=pl')
    end
end

bot.command :ball_safrica do |event|
    event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url:'https://vignette.wikia.nocookie.net/polandball/images/8/81/South_Africa_boer_boer_update_zulu_smth.png/revision/latest/scale-to-width-down/310?cb=20170715185416')
    end
end

bot.command :cube_israel do |event|
    event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url:'https://vignette.wikia.nocookie.net/polandball/images/5/51/Isra.png/revision/latest?cb=20160228145845&path-prefix=pl')
    end
end

bot.command :ball_turkey do |event|
    event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url:'https://fsa.zobj.net/crop.php?r=jxCG6qGWy-zBAmgpqD6X_SGW-F0se8MR4CzCIFrMzSareF803MH7lSvBeWlR22so8-Ezwyo06yAxxUJlLEeCUEfyXISCCEDpqNPcMHVR1yxSPj2q5gkXba1HRlLTcm3lJIbKuUqaKMFw_xPG')
    end
end

bot.command :ball_egypt do |event|
    event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url:'https://vignette.wikia.nocookie.net/battlefordreamisland/images/8/87/Egyptball.png/revision/latest?cb=20180102215517')
    end
end

bot.command :ball_vatican do |event|
    event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url:'https://vignette.wikia.nocookie.net/polandball/images/c/c3/Vaticanball.png/revision/latest/scale-to-width-down/310?cb=20170324012127')
    end
end


bot.command :ball do |event|
  event.respond'```List of balls:

&nepal
&polandball
&reichtangle

&ball_australia
&ball_austria
&ball_brasil
&ball_canada
&ball_china
&ball_egypt
&ball_finland
&ball_france
&ball_germany
&ball_hungary
&ball_japan
&ball_netherlands
&ball_nkorea
&ball_norway
&ball_russia
&ball_safrica
&ball_skorea
&ball_switzerland
&ball_turkey
&ball_uk
&ball_usa
&ball_vatican

~~Cubes~~

&cube_israel
&cube_kazakhstan
```'
end

bot.command :help do |event|
  event.respond'```Commands:
&video - Videos
&ball - Polandballs
&wisdom - Englightment
&pun - Random pun
&cyka - Cykaa Blyaat!
&HH - Somebody is acting weird? Call ze Gestapo!
&bread - Breadfish.co.uk
&nobody - Spanish inquisition!
Du hast mich (without &) - try it.

To report bugs DM: TT#4805
```
'
  end

bot.command :bb do |event|
  event.respond 'ByeBye'
  sleep 3
  exit
end

bot.run :async
bot.game = (CONFIG['game'])
bot.sync
