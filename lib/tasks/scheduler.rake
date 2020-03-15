desc "task to be called regularly"
task :conditionally_tweet => :environment do
  puts "Updating..."
  Bot.interval_tweet
  puts "done updating"
end