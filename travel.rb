puts <<~TEXT
       旅行プランを選択して下さい。

       1. 沖縄旅行（10000円）
       2. 北海道旅行（20000円）
       3. 九州旅行（15000円）

     TEXT

while true
  print "プラン番号を選択 > "
  select_plan_unm = gets.to_i
  break if (1..3).include?(select_plan_unm)
    puts "1~3の番号を選んでください。"
end



 if select_plan_unm == 1
   place = "沖縄"
   price = 10000
 elsif select_plan_unm == 2
   place = "北海道"
   price = 20000
 elsif select_plan_unm == 3
   place = "九州"
   price = 15000
 end

 puts "#{place}旅行ですね。"


puts "何名で予約されますか？"

while true
 print "人数を入力 > "
 number_of_people = gets.to_i
 break if number_of_people >= 1
 puts "1以上を入力して下さい。"
end

 puts "#{number_of_people}名ですね。"

 
 plan_total_price = price * number_of_people

if number_of_people >= 5
  puts "5名以上ですので10%割引となりなす。"
  plan_total_price *= 0.9
end
puts "合計金額は#{plan_total_price.floor}円になります。"
