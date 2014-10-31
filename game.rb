c_points=0
p_points=0

while p_points !=2 && c_points !=2
  puts "Player: #{p_points}, Computer: #{c_points}"
  i=rand(3)
  if i==0
    comp='r'
    c_input='rock'
  elsif i==1
    comp='s'
    c_input='scissors'
  elsif i==2
    comp='p'
    c_input='paper'
  end

  puts "\nLets play Rock, Paper, Scissors\nSelect r (Rock), p (Paper) or s (Scissors)"
  player= gets.chomp

  if player=='r'
     p_input='rock'

    if comp=='r'
       win='Draw'
    elsif comp=='s'
          win='Player'
    else comp=='p'
         win='Computer'
    end

  elsif player=='s'
        p_input='scissors'

    if comp=='r'
       win='Computer'
    elsif comp=='s'
          win='Draw'
    else comp=='p'
         win='Player'
    end

  elsif player=='p'
     p_input='paper'

     if comp=='r'
        win='Player'
     elsif comp=='s'
           win='Computer'
     else comp=='p'
          win='Draw'
      end

  else
    puts "You\'re freaking me out!\nI can only read r(Rock), p(Paper) or s(Scissors)"
  end

  puts "The computer chose: #{c_input} You chose: #{p_input}"

  if win=='Player'
    puts "Player beats Computer round won by Player"
    p_points=p_points+1
  elsif win=='Computer'
    puts "Computer beats Player round won by Computer"
    c_points=c_points+1
    puts "Score: You #{p_points}; Computer #{c_points}"
  elsif win=='Draw'
    "Draw! please choose again."
     puts "Score: You #{p_points}; Computer #{c_points}"
  end
end

if c_points == 2
  puts "Computer WINS!"
else
  puts "Player WINS!"
end
