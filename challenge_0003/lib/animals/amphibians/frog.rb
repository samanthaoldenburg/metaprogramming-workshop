require_relative "base"

module Animals
  module Amphibians
    class Turtle < Animals::Amphibians::Base
      def fun_fact
        "Scientifically, there's no difference between frogs and toads."
      end
    end
  end
end
