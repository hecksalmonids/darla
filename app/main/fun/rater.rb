# Crystal: Fun::Rater


# Rates the given input of a command from 0 to 10.
module Bot::Fun::Rater
  extend Discordrb::Commands::CommandContainer

  command :rate, description: "Rates what it is given on a scale from 0 to 10.",
                 usage:       "+rate [phrase/user mention]" do |event, *args|
    # Break unless arguments are given
    break unless args.size > 0

    # Seed random number generator with either the ID of mentioned user or total of ASCII values of given string
    if (user = Bot::BOT.parse_mention(args.join(' ')))
      text = user.mention
      rng = Random.new(user.id)
    else
      text = args.join(' ')
      rng = Random.new(text.each_byte.reduce { |t, b| t + b })
    end

    # Return rating
    event << "I rate **#{text}** a **#{rng.rand(0..10)}/10**."
  end
end