#encoding: UTF-8
require_relative 'post.rb'
require_relative 'link.rb'
require_relative 'memo.rb'
require_relative 'task.rb'

if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end


puts "Привет! Я блокнот. Что будем записывать?"

types =  Post.post_types
choice = -1

until choice >= 0 && choice <= types.size do

  types.each_with_index do |value, index|
    puts "#{index}: #{value}"
  end

  choice = STDIN.gets.chomp.to_i

end

post = Post.create(choice)

post.read_from_console

post.save



