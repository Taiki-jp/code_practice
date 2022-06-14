# forループ
# for i in 0..5 do
#   puts('hello')
# end

# each
# (0..5).each do |i|
#   puts 'hello'
# end

# コマンドラインから入力を受け取るパターン
(0..ARGV[0].to_i).each do |i|
  puts 'hello' + ": #{i}"
end
# ARGV.each_with_index do |arg, i|
#   puts 'hello'
# end
