#this is the game that we'll be producing
# yesorno2 = ["yes","no"]
yesorno = ["yes","no", "maybe"]

# #the questions that'll be asked to user. answers will be be placed in arrarys to be used
# in until loops if user types a different answer - made to simplify?
def ask_question(phrase)
	puts "NARRATOR: #{phrase}"
	gets.chomp.downcase
 end

#cesna crashes down, game over for user
def cesna
	10000.downto(0) do |n|
		if n & 2 == 0 and n & 4 == 0
		 print "Boom Smash **"
		end
	end
end

#gives results of being split in half by laser beam
def bzz
	1000.downto(0) do |n|
		if n & 2 == 0 and n & 4 == 0
		 print "bbbzzzzzz"
		end
	end
end

#who is talking, Sally or Narrator
def sally(phrase)
	puts "SALLY: #{phrase}"
end

def narrator(phrase)
	puts "NARRATOR: #{phrase}"
	gets.chomp
end
#just playing around with this one for C answer from morning question.

def answer_to_cat
	puts "NARRATOR: Sally opens her eyes slowly to see the frisky feline devouring her face." 
	sleep 2
	yield
end

#question comes out when user chose to redeem self.

def chosen_yes
	yield
end

#when user doesn't input the correct answer
def ask_again
puts ["
******************************************
C'mon, this is like an epic story.
******************************************",
"
******************************************
Don't be an ass, just choose one!
******************************************",
"
******************************************
Fine, quit. See if I care.
******************************************",
"
******************************************
Okay, you're annoying.
******************************************"].sample
	yield
end

###############################
###############################
###############################


narrator "Today is Sally's best or worst day.
It'll be up to you to decide. 
HIT RETURN"

morning_answer = ask_question(
	"HOW DID SALLY WAKE UP?:
	(A) Fell out of bed.
	(B) Cat licking her face.
	(C) She got lucky! ;)")

woke_up = ["a","b","c"]

until woke_up.include?(morning_answer)
	ask_again { morning_answer = ask_question(
	"HOW DID SALLY WAKE UP?:
	(A) Fell out of bed.
	(B) Cat licking her face.
	(C) She got lucky! ;)") }
end




case morning_answer
	when "a"
	sally "OWWW! Was that neccessary?"
	narrator "Do you laugh at her?
	HIT RETURN."
	redeem = ask_question("Type in YES to laugh at her or NO be a nice person or MAYBE because you're still thinking about it.")
	when "b"
	sally "mmmm"
	sleep 1
	sally "mmmmmmmm"
	sleep 1
	sally "mmmmmmmmmmmmmm"
	sleep 1
	answer_to_cat{["Really?","Gross", "I need to brush my teeth"].each do |n|  puts "SALLY: " + n end }
	sleep 2
	puts "####################################"
	redeem = ask_question("Sally feeling deprived from real human companionship,
	she rushes to the bathroom to wash her mouth.
	Do you add to her shame and laugh at her?
	Type YES, NO, MAYBE.")
	# redeem = ask_question("","Type in YES or NO, if you want.")
	when "c"
	narrator "Ignited with the idea of morning nookie, Sally hungrily pulls you in.
	But the clock on the wall suddenly changes her mood.
	HIT RETURN"
	t = Time.new()
	sally t.strftime("Oh shit it's: %T. I'm late for Wyncode!")
	narrator "Fearing not be punctual she decides to hide in the bathroom.
	GAME OVER."
	Kernel.exit!
	else
	
end

until yesorno.include?(redeem)
	ask_again { redeem = ask_question(
	"Type in YES, NO or MAYBE.")}
end



case redeem
	when "yes"
	dark_side = ask_question("You've taken a step towards the dark side.
	Type CONTINUE to proceed...")	
	when "maybe"
	narrator "As you contemplate your empathy, you hear a loud rattling outside.
	Unmoved you keep on, but as you hear the sound reaching deafening highs
	you stop to look outside...
	Too late! A small cesna has hit you.
	HIT RETURN."
	cesna
	Kernel.exit!
	when  "no"
	after_redeem = ask_question("Glad you've choosen to redeem yourself.
	(A) Tell Sally you're extremely sorry and that you'll cook her breakfast.
	(B) Apologize and explain to her about your superhuman powers.
	(C) You made an error and typed in YES instead of NO...it happens.")
end

type_continue = ["continue"]
until type_continue.include?(dark_side)
	ask_again { dark_side = ask_question(
	"You've taken a step towards the dark side.
	Type CONTINUE to proceed...")}
end



case after_redeem
	when "c"
	narrator "You had your chance. GOD is the only one that forgives.
	YOU LOSE!"
	Kernel.exit!
	when "b"
	superpowers = ask_question("She always knew you had superpowers.
	That's because she is Super Villan Sally.
	Type Yes to fight her or No to tickle her.")
	when "a"
	narrator "You cook her the best omellete in the world!
	YOU WIN!"
	Kernel.exit!
end

after_redeem_answer = ["a","b","c"]
until after_redeem_answer.include?(after_redeem)
	ask_again { after_redeem = ask_question("Glad you've choosen to redeem yourself.
	(A) Tell Sally you're extremely sorry and that you'll cook her breakfast.
	(B) Apologize and explain to her about your superhuman powers.
	(C) You made an error and typed in YES instead of NO...it happens.") }
end

superpowers_answer = ["yes","no"]
until superpowers_answer.include?(superpowers)
	ask_again { superpowers = ask_question("She always knew you had superpowers.
	That's because she is Super Villan Sally.
	Type Yes to fight her or No to tickle her.")}
end

case superpowers
	when "yes"
		narrator "Sally rips her robe off and exposes her sexy outfit."
		puts "
		( . Y . ) 
		)......( 
		(...Y...) "
		narrator "Shell-shocked by her beauty, you stand frozen while Super Villan Sally
		splits you in half with her laser beams!
		HIT RETURN."
		bzz
		Kernel.exit!
	when "no"
		narrator "Sally laughs so much that she can't think of a better start of a day than this.
		YOU won!!!"
		Kernel.exit!
end



case dark_side
	when "continue"
	dodge_monkies = ask_question("Demon monkies begin to rip through the floorboards.
	Your only chance of survival is to dodge them.
	Type left or right to manuever the demon monkies.")
end



leftorright = ["left","right"]
until leftorright.include?(dodge_monkies)
	ask_again { dodge_monkies = ask_question(
	"Demon monkies begin to rip through the floorboards.
	Your only chance of survival is to dodge them.
	Type left or right to manuever the demon monkies.")}
end

case dodge_monkies
	when "left"
	narrator "Don't mess with demon monkies you jerk. YOU'RE DEAD!"
 	Kernel.exit!
 	when "right"
 	move = ask_question("Three monkies are gnawing your leg.
	Left or Right.")
		if move == "right"
		help = ask_question("You've kicked the monkies off your leg,
		but you're bleeding badly.
		Ask Sally for HELP.")
		elsif move == "left"
		move2 = ask_question("You managed to dodge a monkey.
		Quick! Try to cover the hole from hell
		Type Cover.")
	end
end

move_answer = ["left","right"]
until move_answer.include?(move)
	ask_again { move = ask_question("Three monkies are gnawing your leg.
	Left or Right.")}
end

cover_answer = ["cover"]
until cover_answer.include?(move2)
	ask_again { move2 = ask_question("You managed to dodge a monkey.
	Quick! Try to cover the hole from hell
	Type Cover.")}
end

if move2 == "cover"
	narrator "You managed to keep the monkies in hell.
	Sally rushes to you and says you're the best!
	You made her day! You won!"
	Kernel.exit!
end

help_answer = ["help"]
until help_answer.include?(help)
ask_again { help = ask_question("You've kicked the monkies off your leg,
		but you're bleeding badly.
		Ask Sally for HELP.")}
end

if help == "help"
	sally "Why should I help you?
	You've been a jerk to me!"
	forgiveness = ask_question("Ask for forgiveness?
	Yes or No?")
end

if forgiveness == "yes"
	sally "I knew you cared."
	narrator "Sally quickly breaks her toothbrush in half and begins shanking the demon monkies.
	Both of you live happily ever after.
	GAME OVER You won!!!!"
	Kernel.exit!
end

if forgiveness == "no"
	sally "Ass!"
	narrator "The monkies overwhelm you and you die a horrible demon monkey death.
	YOU LOSE!"
	Kernel.exit!
end
