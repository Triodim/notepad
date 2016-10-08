class Memo < Post

  def read_from_console

    puts "Вводите строки до слова /end/"

    @text = []
    line = nil

    while line != "end" do
      line = STDIN.gets.chomp
      @text << line
    end

    return @text.pop

  end

  def to_strings

    time_create = "Создано #{@created_at.strftime("%Y-%m-%d, %H:%M")}"
    return @text.unshift(time_create)
  end

end