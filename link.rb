class Link < Post

  def initialize
    super
    @url = ""
  end

  def read_from_console

    puts "Введите урл:"
    @url = STDIN.gets.chomp

    puts "Описание ссылки:"
    @text = STDIN.gets.chomp

  end

  def to_strings

    time_create = "Создано #{@created_at.strftime("%Y-%m-%d, %H:%M")}"

    return [time_create, @url, @text]

  end

end