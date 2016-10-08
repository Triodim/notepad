require 'date'
class Task < Post

  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "Описание задачи:"
    @text = STDIN.gets.chomp
    puts "Введите дэдлайн выполнения в формате чч.мм.гггг например 25.02.2015"
    @due_date = Date.parse(STDIN.gets.chomp)
  end

  def to_strings

    time_create = "Создано #{@created_at.strftime("%Y-%m-%d, %H:%M")}"
    time_todo = "Выполнить до #{@due_date}"
    #{@text} << time_todo
    #return @text.unshift(time_create)
    return [time_create, @text, time_todo]
  end
end