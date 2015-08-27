require "rubocop_delayed_job/version"
require "rubocop"

module RuboCop
  module Cop
    module Lint
      class DelayedJob < Cop
        def on_send(node)
          return unless node.to_a[1] == :delay
          msg = "Don't call the delay method to create jobs. Instead, create a custom job class in app/jobs"
          add_offense(node, :expression, msg)
        end
      end
    end
  end
end

