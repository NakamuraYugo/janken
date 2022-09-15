
  def janken
    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    
    player_hand = gets.to_i
    program_hand = rand(0..3)
    
    jankens = ["グー", "チョキ", "パー", ""]
    
    puts "-----------------------------"
    puts "あなた:#{jankens[player_hand]}を出しました"
    puts "相手:#{jankens[program_hand]}を出しました"
    puts "-----------------------------"
    
    
    if player_hand == program_hand
      puts "あいこ"
      return true  
    elsif player_hand == 0 && program_hand == 1 || 
      player_hand == 1 && program_hand == 2 || 
      player_hand == 2 && program_hand == 0
      puts "あなたの勝ちです"
      $win_or_lose = "win"
      return false
    else
      puts "あなたの負けです"
      $win_or_lose = "lose"
      return false
    end
  end
  
  re_game = true
  
  while re_game
    re_game = janken
  end
  
  def acchimuite_hoi
    
    puts "あっちむいて〜"
    puts "0(上)1(下)2(左)3(右)"
    
    if $win_or_lose == "win"
      player_direction = gets.to_i
      program_direction =rand(0..3)
      
      directions = ["上", "下", "左", "右"]
      
      puts "-----------------------------"
      puts "あなた:#{directions[player_direction]}を出しました"
      puts "相手:#{directions[program_direction]}を出しました"
      puts "-----------------------------"
    
      if player_direction == program_direction
        puts "あなたが勝ちました！"
        return false
      else
        puts "もう一度"
        return true
      end
      
      
    elsif $win_or_lose == "lose"
      player_direction = gets.to_i
      program_direction =rand(0..3)
      
      directions = ["上", "下", "左", "右"]
      
      puts "-----------------------------"
      puts "あなた:#{directions[player_direction]}"
      puts "相手:#{directions[program_direction]}"
      puts "-----------------------------"
      
      if player_direction == program_direction
        puts "あなたが負けました！"
        return false
      else
        puts "もう一度"
        return true
      end
    end
  end
    
  next_game = true
    

    while acchimuite_hoi
      while next_game
        next_game = janken
      end
    end