
desc "generates repetitions for a specific day"
task :generate_repetitions_for_date, [:date_string] => :environment do |t, args|
  RepetitionGenerator.generate_for_date_string(args.date_string)
end

task :generate_repetitions_for_tomorrow => :environment do
  RepetitionGenerator.generate_for_tomorrow
end