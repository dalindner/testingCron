task :autoTask => :environment do
  puts "Sending Email..."
  TestMailer.testemail().deliver
end