require_relative "base"

module Animals
  class Sponge < Animals::Base
    def fun_fact
      <<~FUN_FACT
        Oddly enough sponges are in fact animals, not some kind of plant.
      FUN_FACT
    end
  end
end
