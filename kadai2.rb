jankens = [ "グー","チョキ","パー"]
finger = ["上","下","左","右"]

while true  do 
 puts "じゃんけん..."
 puts "0(グー)1(チョキ)2(パー)3(戦わない)"

 player_hand = gets.to_i
 computer_hand = rand(3)

 unless player_hand == 3
  puts "ホイ!"
  puts "---------------"
  puts "あなた:#{jankens[player_hand]}を出しました"
  puts "相手:#{jankens[computer_hand]}を出しました"
  puts "---------------"

  while player_hand == computer_hand do
   puts "あいこで"
   puts "0(グー)1(チョキ)2(パー)3(戦わない)"

   player_hand = gets.to_i
   computer_hand = rand(3)

   puts "ショ!"
   puts "---------------"
   puts "あなた:#{jankens[player_hand]}を出しました"
   puts "相手:#{jankens[computer_hand]}を出しました"
   puts "---------------"
  end

  if player_hand = (player_hand == 0  && computer_hand == 1 || player_hand == 1 && computer_hand == 2 || player_hand == 2 && computer_hand == 0)
    winner_flag = true 
  else
    winner_flag = false
  end

  puts "あっちむいて〜"
  puts "0(上)1(下)2(左)3(右)"

  player_direction = gets.to_i
  computer_direction = rand(4)

  puts "ホイ!"
  puts "---------------"
  puts "あなた:#{finger[player_direction]}"
  puts "相手:#{finger[computer_direction]}"

  if winner_flag == true && player_direction == computer_direction
   puts "あなたの勝利!"
  elsif
   winner_flag == false && player_direction == computer_direction
   puts "あなたの負け..."
  end
 else
  break
 end
end