require_relative "require_helper"

module Animals
  def self.explicit_load
    RequireHelper.require_directory(this_file_path)
  end

  def self.implicit_load
    RequireHelper.require_directory
  end

  def self.explicit_recursive_load
    RequireHelper.require_directory(this_file_path, recursive: true)
  end

  def self.implicit_recursive_load
    RequireHelper.require_directory(recursive: true)
  end

  # The absolute file path of this exact file
  # TODO Implement me
  def self.this_file_path
    raise NotImplementedError
  end

  # The absolute path of this file's directory (`lib`)
  # TODO Implement me
  def self.this_directory
    raise NotImplementedError
  end
end
