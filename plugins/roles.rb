module Roles
  extend Discordrb::Commands::CommandContainer

  $bot.command(:assign_role, min_args: 2, required_permissions: [:manage_roles], permission_message: 'You need *Manage roles* permission') do |event, mention, *rolename|
    id = $bot.parse_mention(mention.to_s).id.to_i
    user = event.server.member(id)
    rolename = rolename.join(' ')
    begin
      therole = event.server.roles.find { |role| role.name == rolename }
      user.add_role(therole)
      event.respond "Did it!"
    rescue Discordrb::Errors::NoPermission
      event.respond "Bot lacks some permissions, fix it. {manage_roles}"
    end
  end

  $bot.command(:remove_role, min_args: 2, required_permissions: [:manage_roles], permission_message: 'You need *Manage roles* permission') do |event, mention, *rolename|
    id = $bot.parse_mention(mention.to_s).id.to_i
    user = event.server.member(id)
    rolename = rolename.join(' ')
    begin
      therole = event.server.roles.find { |role| role.name == rolename }
      user.remove_role(therole)
      event.respond "Removed it!"
    rescue Discordrb::Errors::NoPermission
      event.respond "Bot lacks some permissions, fix it. {manage_roles}"
    end
  end



  end