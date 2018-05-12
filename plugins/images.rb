module Images
  extend Discordrb::Commands::CommandContainer

  $bot.command :bread do |event|
    event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://img00.deviantart.net/d05c/i/2013/224/3/7/breadfish_by_zhoolfigure-d6hw1g5.png')
    end
  end

  $bot.command :nobody do |event|
    event.channel.send_embed do |embed|
      embed.image = Discordrb::Webhooks::EmbedImage.new(url: 'https://4.bp.blogspot.com/-7sXLalTA0KM/WH2A_gGlYkI/AAAAAAAADdM/vBuPiXeAr7A4jzCYHOhqvnm00UCO9gBygCEw/s1600/1.8.jpg')
    end
  end
end