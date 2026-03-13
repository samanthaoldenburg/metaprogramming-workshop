RSpec.describe RequireHelper do
  describe ".require_directory(file_path = nil, recursive: false)" do
    it "finds a directory with the same name as file_path (minus the suffix) and loads all ruby files in it" do
      Animals.explicit_load

      lib_directory = Animals.this_directory
      animals_directory = File.join(lib_directory, "animals")

      expect(RequireHelper.load_list).to include(
        "#{animals_directory}/base",
        "#{animals_directory}/ant",
        "#{animals_directory}/sponge",
        "#{animals_directory}/amphibians",
        "#{animals_directory}/mammals",
        "#{animals_directory}/reptiles"
      )

      RequireHelper.reset_load_list!
    end

    it "does not load files in sub-directories if `recursive: false`" do
      Animals.explicit_load

      lib_directory = Animals.this_directory

      animals_directory = File.join(lib_directory, "animals")

      expect(RequireHelper.load_list).not_to include(
        "#{animals_directory}/amphibians/base",
        "#{animals_directory}/mammals/base",
        "#{animals_directory}/reptiles/base"
      )

      RequireHelper.reset_load_list!
    end

    context "when `recusrive: true`" do
      it "loads files in nested directories, too" do
        Animals.explicit_recursive_load

        lib_directory = Animals.this_directory
        animals_directory = File.join(lib_directory, "animals")

        expect(RequireHelper.load_list).to contain_exactly(
          "#{animals_directory}/base",
          "#{animals_directory}/ant",
          "#{animals_directory}/sponge",
          "#{animals_directory}/amphibians",
          "#{animals_directory}/amphibians/base",
          "#{animals_directory}/amphibians/frog",
          "#{animals_directory}/mammals",
          "#{animals_directory}/mammals/base",
          "#{animals_directory}/mammals/cat",
          "#{animals_directory}/reptiles",
          "#{animals_directory}/reptiles/base",
          "#{animals_directory}/reptiles/bird",
          "#{animals_directory}/reptiles/turtle"
        )
      end
    end

    context "when `file_path` is not provided" do
      it "it somehow magically knows what file called the method, anyway!" do
        Animals.implicit_load

        lib_directory = Animals.this_directory
        animals_directory = File.join(lib_directory, "animals")

        expect(RequireHelper.load_list).to include(
          "#{animals_directory}/base",
          "#{animals_directory}/ant",
          "#{animals_directory}/sponge",
          "#{animals_directory}/amphibians",
          "#{animals_directory}/mammals",
          "#{animals_directory}/reptiles"
        )

        RequireHelper.reset_load_list!
      end
    end

    context "when `file_path` is not provided" do
      it "it somehow magically knows what file called the method, anyway!" do
        Animals.implicit_load

        lib_directory = Animals.this_directory
        animals_directory = File.join(lib_directory, "animals")

        expect(RequireHelper.load_list).to include(
          "#{animals_directory}/base",
          "#{animals_directory}/ant",
          "#{animals_directory}/sponge",
          "#{animals_directory}/amphibians",
          "#{animals_directory}/mammals",
          "#{animals_directory}/reptiles"
        )

        RequireHelper.reset_load_list!
      end

      it "still works with `recursive: true`" do
        Animals.implicit_recursive_load

        lib_directory = Animals.this_directory
        animals_directory = File.join(lib_directory, "animals")

        expect(RequireHelper.load_list).to contain_exactly(
          "#{animals_directory}/base",
          "#{animals_directory}/ant",
          "#{animals_directory}/sponge",
          "#{animals_directory}/amphibians",
          "#{animals_directory}/amphibians/base",
          "#{animals_directory}/amphibians/frog",
          "#{animals_directory}/mammals",
          "#{animals_directory}/mammals/base",
          "#{animals_directory}/mammals/cat",
          "#{animals_directory}/reptiles",
          "#{animals_directory}/reptiles/base",
          "#{animals_directory}/reptiles/bird",
          "#{animals_directory}/reptiles/turtle"
        )
      end
    end
  end
end
