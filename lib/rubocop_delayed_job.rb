require "rubocop_delayed_job/version"
require "rubocop"

module RuboCop
  module Cop
    module Lint
      class DelayedJob < Cop
        MSG = "Don't use the %s method to create jobs. Instead, create a custom job class in app/jobs and enqueue it with Delayed::Job.enqueue MyJob.new"
        def on_send(node)
          method_name = node.to_a[1]
          return unless [:handle_asynchronously, :delay].include?(method_name)
          msg = MSG % method_name
          add_offense(node, :expression, msg)
        end
      end
    end
  end
end

