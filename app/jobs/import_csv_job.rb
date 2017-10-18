require 'csv'
class ImportCsvJob
	include Sidekiq::Worker
	def perform(csv_file)
		CSV.foreach(csv_file, headers: true) do |line|
		User.create(name: line[0], email: line[1])
		p "user created -#{line[0]}"
		end

	end
end