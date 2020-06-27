# Crystal: Fun::EightBall


# Responds to the given question with a magic 8-ball response
module Bot::Fun::EightBall
  extend Discordrb::Commands::CommandContainer

  # All 8-ball responses
  BALL_RESPONSES = [
      "It is certain",
      "Without a doubt",
      "You may rely on it",
      "Yes – definitely – absolutely",
      "It is decidedly so",
      "As I see it, yes",
      "Most likely",
      "Yes",
      "Outlook good",
      "Signs point to yes",
      "Reply hazy try again",
      "Better not tell you now",
      "Ask again later",
      "Cannot predict now",
      "Concentrate and ask again",
      "Don’t count on it",
      "Outlook not so good",
      "My sources say no",
      "Very doubtful",
      "My reply is no"
  ].freeze

  command :"8ball", description: "Shakes the Magic 8-ball to answer a question.",
                    usage:       "+8ball [question]" do |event, *args|
    break unless args.size > 0

    event.send_embed("Seeing your question **#{args.join(' ')}**, the 8-ball responds with...") do |embed|
      embed.author = {
          name:     "#{BALL_RESPONSES.sample}",
          icon_url: "https://royalbilliard.com/wp-content/uploads/2015/09/8-ball.png"
      }
      embed.color = 0xFFD700
    end
  end
end