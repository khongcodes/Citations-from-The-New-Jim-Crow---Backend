class Bot < ApplicationRecord
  def self.interval_tweet
    # alert = Alert.all.find {|a|a.time == Time.new().min}
    # if alert
    #   CLIENT.update(alert.minutes)
    # end
    CLIENT.update("#{Time.now.min} minutes")
  end
end
