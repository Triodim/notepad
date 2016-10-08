class Post

  def self.post_types
    [Link, Memo, Task]
  end

  def self.create(type)
    return post_types[type].new
  end

  def initialize
    @created_at = Time.now
    @text = ""
  end

  def read_from_console
    #to do
  end

  def to_strings
    #to do
  end

  def save
    file = File.new(file_path, "w:UTF-8")

    for item in to_strings do
        file.puts(item)
    end

    file.close
  end

  def file_path
    current_path = File.dirname(__FILE__)
    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")
    return current_path + "/" + file_name
  end

end