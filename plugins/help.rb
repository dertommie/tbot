module Help
  extend Discordrb::Commands::CommandContainer


  $bot.command :help do |event|
    event.respond'```Commands:
&video - Videos
&ball - Polandballs
&wisdom - Englightment
&pun - Random pun
&cyka - Cykaa Blyaat!
&HH - Somebody is acting weird? Call ze Gestapo!
&bread - Breadfish.co.uk
&nobody - Spanish inquisition!
&rammstein - Du hast mich!

To report bugs DM: <@346288821115289602>
```
'
  end

  $bot.command :video do |event|
    event.respond'```
&vitas - Vitas
&reich - 3rd Reich anthem
&uber - Über Alles
&soviet - Soviet anthem
&wood - Die Woodys!
```'
  end


end