def game
 puts "じゃんけん・・・"
def janken
 puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  
 hands_type = gets.to_i
 cp = rand(3)

 puts "ホイ！"
 puts "------------------"
  case hands_type
  when 0
   puts "あなた：グーを出しました"
  when 1
   puts "あなた：チョキを出しました"
  when 2
   puts "あなた：パーを出しました"
  when 3
   puts "じゃんけんが行われませんでした"
   exit
  end
  
  case cp
  when 0
    puts "相手：グーを出しました"
  when 1
    puts "相手：チョキを出しました"
  when 2
    puts "相手：パーを出しました"
  end
  
 puts "------------------"
  
  if hands_type == cp
    puts "あいこで〜"
    return true
  elsif (hands_type == 0 && cp == 1) || (hands_type == 1 && cp == 2) || (hands_type == 2 && cp == 0)
    @result = "win"
    return false
  else
    @result = "lose"
    return false
  end
end
  
next_game = true

while next_game
  next_game = janken
end

if @result == "win"
 puts "あっち向いて〜(指をさす方向)"
 puts "0(上)1(下)2(右)3(左)"
 
 direction_type = gets.to_i
 cp2 = rand(4)
 
 puts "ホイ！"
 puts "------------------"
  case direction_type
  when 0
    puts "あなた：上"
  when 1
    puts "あなた：下"
  when 2
    puts "あなた：右"
  when 3
    puts "あなた：左"
  end
  
  case cp2
  when 0
    puts "相手：上"
  when 1
    puts "相手：下"
  when 2
    puts "相手：右"
  when 3
    puts "相手：左"
  end
  
 puts "------------------"
  
   if direction_type == cp2
    puts "勝ち"
    return false
   else
    @result = "draw"
    return true
   end
end
  
 if @result == "lose"
  puts "あっち向いて〜(顔を向ける方向)"
  puts "0(上)1(下)2(右)3(左)"
 
  direction_type = gets.to_i
  cp2 = rand(4)
 
  puts "ホイ！"
  puts "------------------"
   case direction_type
   when 0
     puts "あなた：上"
   when 1
     puts "あなた：下"
   when 2
     puts "あなた：右"
   when 3
     puts "あなた：左"
   end
  
   case cp2
   when 0
     puts "相手：上"
   when 1
     puts "相手：下"
   when 2
     puts "相手：右"
   when 3
     puts "相手：左"
   end
  
  puts "------------------"
  
    if direction_type == cp2
     puts "負け"
     return false
    else
     return true
    end
 end
end

next_game = true

while next_game
  next_game = game
end