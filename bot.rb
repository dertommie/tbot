require 'discordrb'
require 'yaml'
require 'date'
require 'rest-client'
require 'json'
require 'open-uri'


CONFIG = YAML.load_file('config.yaml')



$bot = Discordrb::Commands::CommandBot.new token: ENV['MYTOKEN'], prefix:'&', client_id: 421768323773235211, help_command: false


Dir["plugins/*.rb"].each { |r|
    require_relative r
    puts "Loaded: #{r}"
}

STATUS = [
  'mining Rubies',
  'with Rubies',
  'drinking blood',
  'praising Satan',
  'with TT',
  'dying',
].freeze

$bot.ready do |_event|
  $bot.game = "#{STATUS.sample} | &help"
  sleep 180
  redo
end

puts 'Bot is ready!'
$bot.run