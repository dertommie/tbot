module Misc
  extend Discordrb::Commands::CommandContainer

  $bot.command(%i[website, isup], min_args: 1, max_args: 1) do |event, url|
    response = RestClient.get("http://downforeveryoneorjustme.com/#{url}")

    status = response.body.include?('It\'s just you')

    ups = ['For me, its working.', "Its online"].sample
    downs = ['Website is down',"Looks like its offline!"].sample
    begin
      event.channel.send_embed do |e|
        e.title = "Website Up Analysis for #{url}"
        if status
          e.description = "#{ups}"
        else
          e.description = "#{downs}"
        end
      end
    end
  end

  $bot.command(%i[qr qrcode], min_args: 1) do |event, *code|
    code = code.join(' ')
    begin
      event.channel.send_embed do |e|
        e.image = { url: URI.escape("https://api.qrserver.com/v1/create-qr-code/?data=#{code}&size=150x150&.png").to_s }
      end
        end
  end


  $bot.command(%i[flip, coin]) do |event|
   headtails = %w[heads tails].sample
    begin
      event.channel.send_embed do |e|
        e.title = 'Coin Flip'
        e.description = "**#{headtails}**"
      end
        end
  end

  $bot.command(:choose, min_args: 1) do |event, *args|
    args = args.join(' ')
    args = args.split(',')
    event.respond args.sample
  end

  $bot.command(:ping) do |event|
      "#{((Time.now - event.timestamp) * 1000).to_i}ms."
    event.send_message"~~I told you its a bug, there should be a reaction time! if it is here, then you're lucky!~~"
  end


  end