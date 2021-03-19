require "./worker.cr"
require "sidekiq"
# This initializes the Client API with a default Redis connection to localhost:6379.
# See the Configuration page for how to point to a custom Redis location.
Sidekiq::Client.default_context = Sidekiq::Client::Context.new

1..1_000_000.times do |n|
  Sample::MyWorker.async.perform("Job", n)
end
