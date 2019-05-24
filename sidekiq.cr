require "sidekiq/cli"
require "./worker.cr"

cli = Sidekiq::CLI.new
server = cli.configure do |config|
  # middleware would be added here
end

cli.run(server)
