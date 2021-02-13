plans = [
  {place:"沖縄旅行", price:10000},
  {place:"北海道旅行", price:20000},
  {place:"九州旅行", price:15000}
]

puts <<~TEXT
旅行プランを選択して下さい。

    1. 沖縄旅行（10000円）
    2. 北海道旅行（20000円）
    3. 九州旅行（15000円）

TEXT


#入力された番号が不正か判断する処理
while true
  print "プラン番号の選択>"
  #プラン番号を入力する処理
  select_plan_number = gets.to_i
  break if (1..3).include?(select_plan_number)
    puts "1~3を入力してください"
end

#選択されたプラン名を表示する処理
chosen_plan = plans[select_plan_number - 1]
puts "#{chosen_plan[:place]}ですね。"
puts "何名で予約されますか？"

#入力された数が不正な値か判断する処理
while true
  print "人数を入力>"
  #予約人数を入力する処理
  num_of_people = gets.to_i
  break if (num_of_people >= 1)
    puts "1以上の数を入力してください"
end

#入力された人数を表示
puts "#{num_of_people}名ですね。"

#合計金額を計算する処理
total_price = chosen_plan[:price] * num_of_people
#割引料金を計算する処理
discount_total_price = (total_price * 0.9).floor

#割引料金が適応されるか判断する処理
if num_of_people >= 5
  puts "#{num_of_people}名以上ですので10％％割引になります"
  puts "合計金額は#{discount_total_price}円になります。"
else
  puts "合計金額は#{total_price}円になります。"
end
