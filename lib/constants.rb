require 'discordrb'

# Contains utility constants that are useful to many crystals across the bot.
module Constants
  Bot::BOT.ready do
    # Server constant
    SERVER = Bot::BOT.server(705889606352109649)
    # Bot avatar URL
    BOT_AVATAR_URL = Bot::BOT.profile.avatar_url
  end
  # My user ID
  MY_ID = 220509153985167360
end