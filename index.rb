progs = ["cd back && bin/rails s -p 5000", "cd front && gulp watch"]

threads = progs.collect do |prog|
  Thread.new { system prog }
end

threads.map(&:join)
