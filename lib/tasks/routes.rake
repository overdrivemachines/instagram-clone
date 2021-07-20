task routes: :environment do
  puts `bundle exec rails routes | grep -v -e action_mailbox -e active_storage`
end
