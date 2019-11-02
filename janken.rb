puts "ジャンケンを開始します。"
puts "最初はグー、じゃんけん…"

player1 =[]
player2 =[]
 
player1_win = 0
player2_win = 0
battle_draw = 0

p1_win_rock = 0
p1_win_paper = 0
p1_win_scissors = 0

p2_win_rock = 0
p2_win_paper = 0
p2_win_scissors = 0

draw_rock = 0
draw_paper = 0
draw_scissors = 0

for i in 0..99 do
	srand(i)
	player1[i] = rand(0..999)
	player2[i] = rand(0..999)

#	puts"テスト#{i}回目,player1:#{player1},player2:#{player2}"

    if 0<=player1[i] && player1[i]<=333
    	puts"player1:グー"
    elsif 333<player1[i] && player1[i]<=666
    	puts"player1:チョキ"
    else
    	puts"player1:パー"
    end

    if 0<=player2[i] && player2[i]<=222
    	puts"player2:グー"
    elsif 222<player2[i] && player2[i]<=444
    	puts"player2:チョキ"
    else
    	puts"player2:パー"
    end

   

	if 0<=player1[i] && player1[i]<=333
		if 0<=player2[i] && player2[i]<=222
			puts '引き分けです。'

			battle_draw +=1
			draw_rock +=1

		#puts"テスト#{i}回目,p1 #{player1_win}勝　グー#{p1_win_rock}勝,パー#{p1_win_paper}勝,チョキ#{p1_win_scissors}勝"

		elsif 222<player2[i] && player2[i]<=444
			puts 'player1の勝ちです。'
			
			player1_win +=1
			p1_win_rock +=1

		#puts"テスト#{i}回目,p1 #{player1_win}勝　グー#{p1_win_rock}勝,パー#{p1_win_paper}勝,チョキ#{p1_win_scissors}勝"
		else
			puts 'player2の勝ちです。'
			
			player2_win +=1
			p2_win_paper +=1
		end
	elsif 333<player1[i] && player1[i]<=666
		if 0<=player2[i] && player2[i]<=222
			puts 'player2の勝ちです。'
			
			player2_win +=1
			p2_win_rock +=1
		elsif 222<player2[i] && player2[i]<=444
			puts '引き分けです。'

			battle_draw +=1
			draw_scissors +=1
		else
			puts  'player1の勝ちです。'
			
			player1_win +=1
			p1_win_scissors +=1
		end
	else
		if 0<=player2[i] && player2[i]<=222
			puts 'player1の勝ちです。'
			
			player1_win +=1
			p1_win_paper +=1
		elsif 222<player2[i] && player2[i]<=444
			puts 'player2の勝ちです。'
			
			player2_win +=1
			p2_win_scissors +=1
		else
			puts '引き分けです。'

			battle_draw +=1
			draw_paper +=1
		end
	end
	#puts"テスト#{i}回目,p1 #{player1_win}勝　グー#{p1_win_rock}勝,パー#{p1_win_paper}勝,チョキ#{p1_win_scissors}勝"
end

puts "p1   #{player1_win}勝　グー#{p1_win_rock}勝,パー#{p1_win_paper}勝,チョキ#{p1_win_scissors}勝"
puts "p2   #{player2_win}勝　グー#{p2_win_rock}勝,パー#{p2_win_paper}勝,チョキ#{p2_win_scissors}勝"
puts "引分 #{battle_draw}分 グー#{draw_rock}分,  パー#{draw_paper}分,  チョキ#{draw_scissors}分"

puts "じゃんけんプログラム終了..."
