module Help
  extend Discordrb::Commands::CommandContainer


  $bot.command :help do |event|
    event.respond'```Commands:
&ball - Polandball
&bread - Breadfish.co.uk
&choose - Bot will choose one from given arguments!
&cyka - Cykaa Blyaat!
&define - Define a word! *Will work within a week!*
&flip/&coin - Flip a coin!
&HH - Somebody is acting weird? Call ze Gestapo!
&nobody - Spanish inquisition!
&ping - Check Bot latency! *doesnt work for now, bug*
&pun - Random pun
&qr/&qrcode - Create a QR code from given text or website!
&urban - Urban dictionary!
&video - Videos
&website/&isup - Check if given website is online
&wisdom - Englightment

To report bugs DM: <@346288821115289602>
```
'
  end

  $bot.command :video do |event|
    event.respond'```
&rammstein - Du hast mich!
&reich - 3rd Reich anthem
&soviet - Soviet anthem
&uber - Über Alles
&vitas - Vitas
&wood - Die Woodys!
```'
  end


end