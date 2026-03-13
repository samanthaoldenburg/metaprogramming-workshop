require_relative "base"

module Animals
  module Mammals
    class Cat < Animals::Mammals::Base
      def fun_fact
        'All cats are obligate carnivores'
      end
    end
  end
end
