require_relative "base"

module Animals
  module Reptiles
    class Turtle < Animals::Reptiles::Base
      def fun_fact
        "Not all turtles are tortoises, but all tortoises are turtles"
      end
    end
  end
end
