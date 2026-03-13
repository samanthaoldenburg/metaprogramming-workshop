module RequireHelper
  # Load the files in a directory that shares the name with the given file
  #
  # See the tests for examples of it in action
  def self.require_directory(file_path = nil, recursive: false)
  end

  # Convenience function to make it easier to tell when we try to require a
  # file, even if it's already loaded.
  #
  # There are other ways to check if a file is required, but now I also get to
  # impose constraints on your `require_directory` solution.
  #
  # @note You shouldn't need to edit this method.
  #
  def self.require_file(file)
    raise ArgumentError, "expected String, got #{file.class}" unless file.is_a? String
    raise ArgumentError, "remove the file extension" if file.match? /\.rb$/

    # Load is like `require` but will re-load the file even if it's already been loaded.
    #
    # It's one of my favorite methods in Ruby
    load file

    load_list << file

    true
  end

  def self.load_list
    @load_list ||= []
  end

  def self.reset_load_list!
    @load_list = nil
  end
end
