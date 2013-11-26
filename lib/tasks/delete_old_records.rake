namespace :delete do
  desc 'Delete records older than 1 day'
  task :old_records => :environment do
    Thing.where('the_date < ?', 1.day.ago).each do |thing|
      thing.destroy
    end
  end
end