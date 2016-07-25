note
	description: "Summary description for {DUNGEONVIEW}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

expanded class
	DUNGEON_VIEW


feature
	purchase_Instruction
		--Display items which can be purchased by the user in 3 different gorups
	do
		print("<1> Alienware 18 Laptop, (2) Tech Support, (1) USB %N")
		print("<2> Macbook Pro, (3) USBs, (3) Tech Support, (3) Trojan Virus, (1) Anti-Virus, (1) USB Mouse %N")
		print("<3> Jailbroken Chromebook, (4) USBs, (3) Trojan Viruses, (2) Anti-Viruses, (1) USB Mouse, (2) Tech Support, (1) Great IDE %N")
		io.read_integer

	end


	mainOpt_Instruction
		--Give the user 6 different option to choose
		do
			print("Look around %N")
			print("<1> Look around%N")
			print("<2> Talk to the Shady Dealer in the corner%N")
			print("<3> Inventory%N")
			print("<4> Stats%N")
			print("<5> Next Room%N")
			print("<6> Use Item%N")
			io.read_integer
			--mainOption := io.last_integer
		end


	classChoose_Instruction
		--Gives the user 3 option to choose for the identity
		do
			print("<1> Hacker: Good with viruses and pretty fine with code but has a weakness for firewalls. Also low intelligence...%N")
			print("<2> CEO: Very intelligent and lots and lots of system space but not the best with code.%N")
			print("<3> Coder : Great with code, kinda bad system space, decent viruses and firewalls.%N")
			io.read_integer
		--	playerClass := io.last_integer

		end


	merchant_Instruction(cash:INTEGER)
		--Display the items that user can buy
			do
				print("Shady Merchant: Buy Something!?!?! %N")
				print("<1> USB - 10 BitCoins %N")
				print("<2> Tech Support - 20 BitCoins %N")
				print("<3> Trojan Virus - 30 BitCoins %N")
				print("<4> Anti-Virus - 15 BitCoins %N")
				print("%N")
				print("BitCoins: ")
				print(cash)
				print("%N")
				print("<5> Nothing Thanks! %N")
				io.read_integer
				--buy := io.last_integer
			end

	merchant_not_enoght_money
		--Inform the user for not having enought money to proceed
			do
				print("You don't have enough money for that. What?! you trying to scam me??%N")
			end

	merchant_not_exist
		--Inform the user for invalid item
		do
			print("Merchant: That doesn't exists!!%N")
		end

	statRead_Instruction(firewall:INTEGER;viruses:INTEGER;code:INTEGER;intelligence:INTEGER;system:INTEGER;level:INTEGER;xp:INTEGER)
		--Display status including firewall, viruses, code, intelligence, system, level and XP
		do
			print("--Stats-- %N")
				print("Firewall: ")
				print(firewall)
				print("%N")

				print("Viruses: ")
				print(viruses)
				print("%N")

				print("Code: ")
				print(code)
				print("%N")

				print("Intelligence: ")
				print(intelligence)
				print("%N")

				print("System: ")
				print(system)
				print("%N")

				print("Level: ")
				print(level)
				print("%N")

				print("XP: ")
				print(xp)
				print("%N")
		end

	invenAsk_instruction(list:STRING;i:INTEGER)
		--Display inventory items' numbers
		do
				print("<")
				print(i)
				print(">: ")
				print(list)
				print("%N")
		end

	invenAsk_input
		do
			io.read_integer
		--	invenOption := io.last_integer
		end


	doBattle_Instruction(system:INTEGER;myDefense:INTEGER;enemyHP:INTEGER;enemyAttack:INTEGER;enemyDefense:INTEGER;virusesMade:INTEGER;virusAttack:INTEGER)
		--Display 6 different options to choose for the user
		do
			print("Action: %N")
			print("<1> Send out virus. %N")
			print("<2> Build. %N")
			print("<3> Work on system defense. %N")
			print("<4> Repair system. %N")
			print("<5> Use Item. %N")
			print("%N System Status: ")
			print(system)
			print("%N Defense: ")
			print(myDefense)
			print("%N Enemy HP: ")
			print(enemyHP)
			print("%N Enemy Attack: ")
			print(enemyAttack)
			print("%N Enemy Defense: ")
			print(enemyDefense)
			print("%N Viruses Made: ")
			print(virusesMade)
			print("%N Viruses Power: ")
			print(virusAttack)
			print("<6> See Full Stats%N")
			io.read_integer
			--action := io.last_integer
		end




		doBattle_not_valid_no
		--Warn the user about the invalid number
		do
			print("You did not type in a valid number.%N")
		end

		doBattle_Need_Virus
		--Inform to the user to make more viruses
		do
			print("You need to make a virus!%N")
		end

		doBattle_Build_virus
		--inform the user that virus is built
		do
			print("You build a virus%N")
		end

		doBattle_Defense_Improved
		--Inform the user that the defense system is improved
			do
				print("Defense improved!%N")
			end

		doBattle_System_Improved
		--Inform the user that the system is improved
			do
				print("System improved!%N")
			end

		doBattle_Repaired_System
		--Inform the user that the system is repaired
			do
				print("You used a USB and repaired your system by 15.%N")
			end


		doBattle_Leave_Battle
		--Inform the user to leave the battle
			do
				print("You get to leave battle%N")
			end


		doBattle_Increased_Deffense_Five
		--Inform the user that the system defence is increased by 5
			do
				print("You increased your system defense by 5.%N")
			end


		doBattle_More_Two_Virus
		--Inform the user that the viruses got more powerful and you got two for free
			do
				print("Your viruses got more powerful and you got two for free!%N")
			end


		doBattle_Not_Valid_Item
		--Inform the user about invalid item
			do
				print("Not a valid item.%N")
			end


		doBattle_Enemy_Attack(enemyAttack:INTEGER;myDefense:INTEGER;)
			--Displays
			do
				if enemyAttack > myDefense then
				print("Enemy attacks for ")
					print(enemyAttack - myDefense)
					print("%N")
				else
				print("Enemy attacks for ")
				print(enemyAttack)
				print("%N")
			end
			end

		doBattle_Num_Cash(sentHP:INTEGER)
			--Display the number of the cash and XP number which user has
			do
				print("You got ")
				print(sentHP // 2)
				print(" cash.%N")
				print(sentHP)
				print(" XP.")
				print("%N")
			end

		inven_Read_Inventory_List(list:STRING)
		--Read the inventory items and display their numbers
			do
				print("--Inventory-- %N")
				print(list)
				print("%N")
			end

		inven_Read_Bit_Coin(cash:INTEGER)
		--Read the amount of bitcoins
			do
				print("%NBitCoins: ")
				print(cash)
				print("%N")
			end

		app_Welcome(classstring:STRING)
		--Welcomes the user and explains the opening of the game
			do
				print ("Welcome to the Dunegon game!%N")
				--		d.classchoose

				--		d.statread

						print("You are travelling on a long journey away from your home in the land of C.%N")
						print("In the distance you see a travler.%N")
						print("%N")
						print("Villager: Greetings young ")
						print(classstring)
						print("%N")
						print("I'm afraid that I have troubling news!%N")
						print("My hometown of Macintosh has been terrorized by a near- by Code Dungeon.%N")
						print("Viruses leak out and murder our farmers. We may starve soon! It would be great if a ")
						print(classstring)
						print(" like you could help us!")

						print("%NVillager: So will you accept?? %N")
						print("<0> YES	<1> NO")
						print("%N")

						io.read_integer
					--	accept := io.last_integer
			end

			app_accept_zero(classstring:STRING)
				do
				print("Villager: Thank you so much! What is your name great")
				print(classstring)
				print(" ?")
				print("%N")
				io.read_line
				end

			app_greate_name(name:STRING)
				do
				print("%N")
				print(name)
				print(" That's a great name! Come to my village we will help equip you for you jouney!%N")
				print("%N The two of you travel to the village.%N%N")
				end

			app_Message_Bitcoin
			--Explains
			do
				print("Villager: Here is the dungeon. But before you go take 200 BitCoins...")
				print("You might need them...%N")
				print("%N Wow! That guy scammed you! He only gave you 20 coins!%N")
				print("Villager: Oh! I forgot There is a boss who guards the door. Don't worry thuogh he's weak.")
				print(" I'd watch out for mini boss though...%N")

			end

			app_Boss_Fight
			--Inform the user the ready situation to go up
			do
				print("You are almost ready to level up... Boss FIGHT!!")
			end

			app_beat_boss
				do
					print("You beat a boss and level up!")
				end

			app_Explore_Room
			--Inform that the user explore the room
			do
				print("%N You explore the room. ")
				--print(rand)
			end

			app_Ask_Computer_Open
			--Asks if the user wants to open a mysterious computer or not
			do
				print("%N")
				print("You find a mysterious looking computer possibly filled with BitCoins. Open ?%N")
				print("<y> YES  <n> NO   ")
				io.read_integer
				--open := io.last_integer
			end

			app_Malware_Infection
			--Inform that the user's system is infected by malware
			do
				print("The chest was filled with malware that infects your system.")
			end

			app_Found_1000_Bitcoin
			--Informs that the user found 1000 bitcoins
			do
				print("You find a load of 1000 BITCOINS!!")
			end

			app_Enemy_Coder
			--Informs that the user encounters an enemy coder
			do
				print("You encounter an enemy coder!")
			end

			app_won
			--Informs winning of the user
			do
				print("You won the battle!!")
			end

			app_Ask_Bowl_Investigate
			--Asks if the user wants to investigate on a mysterious bowl or not
			do
				print("You find a mysterious looking bowl of gucamole. Investigate ?%N")
				print("<1>YES  <2>NO   ")
				io.read_integer
				--guac := io.last_integer
			end

			app_Quac_Key
			--Inform that the user took a bite of the quac and found a key
			do
				print("%N")
				print("You take a bite of the guac and find a key upon your chip!%N")
				print("Also you feel quite rejuvinated...")
			end

			app_Not_Quac
			--Inform the user stayed away from the quac and is suspicous
			do
				print("%N You stay away from the guac...%N")
				print(" You were always suspicous of avocadoes...")
			end

			app_encounter_Mini_Boss
			--Inform that the user encounter a mini boss
			do
				print("You encounter a Mini Boss!")
			end

			app_Beat_Mini_Boss
			--Inform that the user beat a mini boss
			do
				print("You beat a mini boss!")
			end

			app_find_nothing
			--Informs that the user found nothing
			do
				print("You find nothing.")
			end

			app_Saw_Before
			--Informs that the user already saw the room
			do
				print("You already saw what was in this room.")
			end

			app_Need_USB_Repaired_15
			--Informs that the user used a USB and repaired the system by 15
			do
				print("You used a USB and repaired your system by 15.")
			end

			app_Not_Valid_Item
			--Displays not valid item
			do
				print("Not a valid item.")
			end

			app_you_died
				do
				print("You died... The villager morns your death.")

				end
			app_Village_Slaughtered
			--Informs that the village is slaughtered
			do
				print("Villager: Oh... That's okay...%N")
				print("The whole village of Macintosh was later slaughtered...")
			end
end
