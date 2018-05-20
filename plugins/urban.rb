module English
  extend Discordrb::Commands::CommandContainer

  $bot.command(:urban, min_args: 1) do |event, *word|
    word = word.join(' ')
    url = URI.escape("http://api.urbandictionary.com/v0/define?term=#{word}")
    parse = JSON.parse(RestClient.get(url))
    if parse['result_type'].to_s == 'no_results'
      event.respond "No results found for `#{word}`!"
      return
    end
    info = parse['list'][0]
    definition = info['definition'].to_s
    definition = definition.tr("\n", ' ')
    example = info['example'].to_s
    example = example.tr("\n", ' ')

    word = info['word'].to_s

    begin
      event.channel.send_embed do |e|
        e.title = "Urban Dictionary defintion for **#{word}**"

        e.add_field(name: 'Definition', value: definition, inline: false)
        e.add_field(name: 'Example', value: example, inline: false)
      end
    rescue Discordrb::Errors::NoPermission
      event.respond "Permission error!"
    end
  end


  $bot.command(:define) do |event, word|
    grabbedword = JSON.parse(RestClient.get("http://api.wordnik.com/v4/word.json/#{word}/definitions?limit=1&includeRelated=true&useCanonical=false&includeTags=false&api_key=81bb07b1c1f44e83f586742069269c7837ffb51407f376032"))
    begin
      event.channel.send_embed do |embed|
        embed.title = "Definition for #{word}"
        embed.description = (grabbedword[0]['text']).to_s

        embed.author = Discordrb::Webhooks::EmbedAuthor.new(name: 'Dictionary', icon_url: 'http://icons.iconarchive.com/icons/johanchalibert/mac-osx-yosemite/1024/dictionary-icon.png')

        embed.add_field(name: 'Part of Speech', value: (grabbedword[0]['partOfSpeech']).to_s, inline: true)
      end
    rescue NoMethodError
      event.respond 'Word not found! Check your local spell-checker!'
    end
  end
end