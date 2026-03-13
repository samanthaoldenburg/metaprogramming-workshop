require_relative "base"

module Animals
  class Ant < Animals::Base
    def fun_fact
      <<~FUN_FACT
        A commonly known fact about ants is that they can lift 5 times their own weight. But there's
        species of ants that can lift as much as *20* times their own weight!
      FUN_FACT
    end
  end
end
