# ref : https://qiita.com/N396184501/items/092521be0965cd6abd5e
# 問題
# 3桁の正の整数を入力します。その整数の「百の位・十の位・一の位の和」について、
# 10の倍数（0,10,20,30...）からの差が
# 2以内であるときは"True"
# それ以外は"10の倍数との差は○です"
# と表示されるようにプログラムを書く。

def main(input_num)
  # エラーハンドリング
  begin
    if (gap_with_mul_10(input_num) <= 2)
      puts("True")
    else
      # 改行なし
      # print("10の倍数との差は#{gap_with_mul_10(input_num)}です。")
      # 改行あり
      puts("10の倍数との差は#{gap_with_mul_10(input_num)}です。")
    end
  rescue NoMethodError => e
    # p e.message
    # puts e.message
    # puts e.class.name
    puts "【NoMethodError】文字列を指定しないでください"
    puts e.class
    # puts("例外発生")
  rescue => e
    puts "例外発生"
    puts e.message
    puts e.class
  ensure
    puts "=== done ==="
  end
end

def gap_with_mul_10(input_num)
  if (input_num.class == Float)
    raise Exception
  end
  # quotient = input_num / 10 
  return input_num - (input_num / 10) * 10
end

def outer_function
  inner_function = lambda { raise StandardError }
  # def inner_function
  #   raise StandardError
  # end
  begin
    inner_function
  rescue StandardError => e
    puts '例外キャッチ'
    e.message
  end
end

outer_function

# test
# main(144)
# main(214)
# main(898)
main(898.8)
main("898")
