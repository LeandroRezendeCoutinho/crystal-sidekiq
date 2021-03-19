require "sidekiq"

module Sample
  class MyWorker
    include Sidekiq::Worker

    def perform(name : String, count : Int32)
      puts "#{name} #{count} -> #{fib(10)}"
    end

    def fib(n : UInt64)
      return 1_u64 if n <= 1
      fib(n - 1) + fib(n - 2)
    end
  end
end
