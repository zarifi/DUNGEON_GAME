note
	description: "DUNGEON_GAME application root class"
	date: "$Date$"
	revision: "$Revision$"

class
	APPLICATION

create {APPLICATION_ACCESSOR}
	make

feature --Attributes
	v:DUNGEON_VIEW
	c:DUNGEON_CONTROLLER

feature -- Initialization

	make
			-- Run application.
		do
			--| Add your code here

			create c.make
			current.run

		end

feature -- Run the Application

	run
	local
		rand, open, guac:INTEGER
	do
		print ("Welcome to the Dunegon game!%N")
	--	c.test
	--	io.read_integer
		c.class_choose
		c.statread
		v.app_welcome(c.m.classstring)
		c.m.set_accept (io.last_integer)

		if c.m.accept = 0 then  --changed
			v.app_accept_zero(c.m.classstring)
			c.m.set_name (io.last_string)
			v.app_greate_name(c.m.name)
			c.purchase

			if c.m.purchaseno = 1 then
				c.inventory.extend ("Alienware 18")
				--Set stats for computer
				c.m.set_firewall (c.m.firewall + 5)
				c.m.set_viruses (c.m.viruses + 3)
				c.m.set_code (c.m.code + 3)
				c.m.set_system (c.m.system + 50)

				--Inventory Update

				c.inventory.extend ("Tech Support")
				c.inventory.extend ("Tech Support")
				c.inventory.extend ("USB")

			else if c.m.purchaseno = 2 then
				c.inventory.extend ("Macbook Pro")
				--stats for computer

				c.m.set_firewall (c.m.firewall + 4)
				c.m.set_viruses (c.m.viruses + 1)
				c.m.set_code (c.m.code + 2)
				c.m.set_system (c.m.system + 20)
				c.m.set_intelligence (c.m.intelligence + 1)

				c.inventory.extend ("USB")
				c.inventory.extend ("USB")
				c.inventory.extend ("USB")
				c.inventory.extend ("Tech Support")
				c.inventory.extend ("Tech Support")
				c.inventory.extend ("Tech Support")
				c.inventory.extend ("Trojan Virus")
				c.inventory.extend ("Trojan Virus")
				c.inventory.extend ("Trojan Virus")
				c.inventory.extend ("Anti-Virus")
				c.inventory.extend ("USB Mouse")
			else if c.m.purchaseno = 3 then
				c.inventory.extend ("Jailbroken Chromebook")
				--Computer stats
				c.m.set_firewall (c.m.firewall + 3)
				c.m.set_viruses (c.m.viruses + 1)
				c.m.set_code (c.m.code + 1)
				c.m.set_system (c.m.system + 10)

				c.inventory.extend ("USB")
				c.inventory.extend ("USB")
				c.inventory.extend ("USB")
				c.inventory.extend ("USB")
				c.inventory.extend ("Trojan Virus")
				c.inventory.extend ("Trojan Virus")
				c.inventory.extend ("Trojan Virus")
				c.inventory.extend ("Anti-Virus")
				c.inventory.extend ("Anti-Virus")
				c.inventory.extend ("USB Mouse")
				c.inventory.extend ("Tech Support")
				c.inventory.extend ("Tech Support")
				c.inventory.extend ("Great IDE")

			else
				c.inventory.extend ("Moldy Sandwich")
				c.inventory.extend ("How to: Java Guide")

			end
			end
			end

			v.app_message_bitcoin

			c.m.set_cash (c.m.cash + 20)
			c.m.set_explored (false)
			c.m.set_room (1)

			from

			until
				c.m.system < 0
			loop
				if c.m.xp = c.m.level * 100 then
					v.app_boss_fight
					if c.dobattle ("Boss", (c.m.xp + 1)*10, (c.m.xp + 1), (c.m.xp + 1)) then
						v.app_beat_boss
						c.m.set_level(c.m.level + 1)
						c.m.set_firewall(c.m.firewall + c.m.level)
						c.m.set_viruses( c.m.viruses + c.m.level)
						c.m.set_code(c.m.code + c.m.level)
						c.m.set_system(c.m.system + c.m.level)
						c.m.set_intelligence(c.m.intelligence + c.m.level)
						c.m.set_xp(0)
						c.statread
					end
				else
					c.main_opt
				--	c.test
				--	m.set_mainoption (5)
				--	io.read_integer
				--	m.set_mainoption (io.last_integer)
				--	print("this is the test")
				--	print(m.get_mainoption)
				--	print(m.get_mainoption = 1)
					if c.m.get_mainoption = 1 then
						print(not c.m.explored)
						if not c.m.explored then
							c.m.set_explored (true)
							rand := 0
							v.app_explore_room
							print(rand)
							if rand = 0 then
								v.app_ask_computer_open
								open := io.last_integer

								if open = 1 then
									if c.random.item \\ 100 >= 50 then
										v.app_malware_infection
										c.m.set_system (0)
									else
										v.app_found_1000_bitcoin
										c.m.set_cash (c.m.cash + 1000)
									end

								end
							else if rand <= 50 then
								v.app_enemy_coder
								if c.dobattle ("Hacker", (c.m.level+2)*10, (c.m.level+2)*2, (c.m.level+2)*2) then
									v.app_won
								end
							else if rand = 99 then
								v.app_ask_bowl_investigate
								guac := io.last_integer

								if guac = 1 then
									v.app_quac_key
									c.m.set_system (c.m.system + 100)
									c.inventory.extend("Key")
								else
									v.app_not_quac
								end
							else if rand > 85 then
								v.app_encounter_mini_boss
								if c.dobattle ("CEO Hacker", rand, rand, rand) then
									v.app_beat_mini_boss
								end
							else
								v.app_find_nothing

							end

							end

							end


							end
						else
							v.app_saw_before

						end
					else if c.m.mainoption = 2 then
						c.merchant
					else if c.m.mainoption = 3 then
						c.invenread
					else if c.m.mainoption = 4 then
						c.statread
					else if c.m.mainoption = 5 then
						c.m.set_explored (false)
						c.m.set_room (c.m.room + 1)
					else if c.m.mainoption = 6 then
						c.m.set_selectitem (c.invenask)

						if c.inventory.array_item (c.m.selectItem).is_equal ("USB") then
							c.m.set_system (c.m.system + 15)
							v.app_need_usb_repaired_15
							c.inventory.go_i_th (c.m.selectItem)
							c.inventory.remove
						else
							v.app_not_valid_item

						end

					end

					end

					end

					end

					end

					end

				end


			end
			v.app_you_died

		else
			v.app_village_slaughtered


		end



	end


end --APPLICATION