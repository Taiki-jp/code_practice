# refs: http://vipprog.net/wiki/exercise.html

# for i in 1..100 do
#   msg = ''
#   isTriple = i % 3 == 0
#   isFifth = i % 5 == 0
#   # 全ケース網羅
#   if !(isTriple || isFifth)
#     msg = i
#   elsif (isTriple && isFifth)
#     msg = 'fizzbuzz'
#   elsif isTriple && !isFifth
#     msg = 'fizz'
#   elsif !isTriple && isFifth
#     msg = 'buzz'
#   end

#   puts msg
  
# end

def fizz_buzz(n)
  # リスト要素の0番目だけ取得、それ以外はnullを返す
  ret = "#{['Fizz'][n % 3]}#{['Buzz'][n % 5]}"
  ret.empty? ? n.to_s : ret
end

puts (1..100).collect{ |n| fizz_buzz n }
