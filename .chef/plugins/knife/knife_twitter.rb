require 'chef/knife'
module KnifePlugins
  class Tweet < Chef::Knife
    deps do
      require 'twitter'
    end

    banner "knife tweet MESSAGE"

    def run
      unless name_args.size == 1
        ui.fatal "You need to say something!"
        show_usage
        exit 1
      end

      client = Twitter::REST::Client.new do |config|
        config.consumer_key = ""
        config.consumer_secret = ""
        config.access_token = ""
        config.access_token_secret = ""
      end
      client.update("#{name_args.first} #getchef")
    end
  end
end
