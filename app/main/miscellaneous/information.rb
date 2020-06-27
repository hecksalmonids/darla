# Crystal: Miscellaneous::Information


# Contains commands related to the bot's information.
module Bot::Miscellaneous::Information
  extend Discordrb::Commands::CommandContainer
  
  command :source, description: "Returns the bot's source on github and relevant libraries.",
                   usage:       "+source" do |event|
    event.send_embed do |embed|
      embed.description = <<~DESC.strip
        Darla is a Discord bot made in the [Ruby](https://www.ruby-lang.org/en/) language.
        It uses the [discordrb](https://github.com/discordrb/discordrb) API library and the [Geode](https://github.com/hecksalmonids/geode) bot framework.
        Source code can be found [here](https://github.com/hecksalmonids/darla).
      DESC
      embed.color = 0xFFD700
    end
  end
end