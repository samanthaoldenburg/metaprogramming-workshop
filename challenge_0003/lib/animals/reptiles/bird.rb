require_relative "base"

module Animals
  module Reptiles
    class Bird < Animals::Reptiles::Base
      def fun_fact
        "Birds are, in fact, reptiles."
      end
    end
  end
end
