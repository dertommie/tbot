require 'discordrb'
require 'yaml'
require 'date'

CONFIG = YAML.load_file('config.yaml')



$bot = Discordrb::Commands::CommandBot.new token: ENV['MYTOKEN'], prefix:'&', client_id: 421768323773235211, help_command: false


Dir["plugins/*.rb"].each { |r|
    require_relative r
    puts "Loaded: #{r}"
}

$bot.run :async
$bot.game = (CONFIG['game'])
$bot.sync
