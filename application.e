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
	m:DUNGEON_MODEL
	c:DUNGEON_CONTROLLER

feature -- Initialization

	make
			-- Run application.
		do
			--| Add your code here
			create m.make
			create c.make
			current.run

		end

feature -- Run the Application

	run
	local
		rand, open, guac:INTEGER
	do
		print ("Welcome to the Dunegon game!%N")
		c.class_choose
		c.statread
		v.app_welcome(M.classstring)
		m.set_accept (io.last_integer)

		if m.accept = 0 then
			v.app_accept_zero(m.classstring)
			m.set_name (io.last_string)
			v.app_greate_name(m.name)
			c.purchase

			if m.purchaseno = 1 then
				c.inventory.extend ("Alienware 18")
				--Set stats for computer
				m.set_firewall (m.firewall + 5)
				m.set_viruses (m.viruses + 3)
				m.set_code (m.code + 3)
				m.set_system (m.system + 50)

				--Inventory Update

				c.inventory.extend ("Tech Support")
				c.inventory.extend ("Tech Support")
				c.inventory.extend ("USB")

			else if m.purchaseno = 2 then
				c.inventory.extend ("Macbook Pro")
				--stats for computer

				m.set_firewall (m.firewall + 4)
				m.set_viruses (m.viruses + 1)
				m.set_code (m.code + 2)
				m.set_system (m.system + 20)
				m.set_intelligence (m.intelligence + 1)

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
			else if m.purchaseno = 3 then
				c.inventory.extend ("Jailbroken Chromebook")
				--Computer stats
				m.set_firewall (m.firewall + 3)
				m.set_viruses (m.viruses + 1)
				m.set_code (m.code + 1)
				m.set_system (m.system + 10)

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

			m.set_cash (M.cash + 20)
			m.set_explored (false)
			m.set_room (1)

			from

			until
				m.system = 0
			loop
				if m.xp = m.level * 100 then
					v.app_boss_fight
					if c.dobattle ("Boss", (m.xp + 1)*10, (m.xp + 1), (m.xp + 1)) then
						v.app_beat_boss
						m.set_level(m.level + 1)
						m.set_firewall(m.firewall + m.level)
						m.set_viruses( m.viruses + m.level)
						m.set_code(m.code + m.level)
						m.set_system(m.system + m.level)
						m.set_intelligence(m.intelligence + m.level)
						m.set_xp(0)
						c.statread
					end
				else
					c.main_opt
					if m.mainoption = 1 then
						print(not m.explored)
						if not m.explored then
							m.set_explored (true)
							rand := 0
							v.app_explore_room
							print(rand)
							if rand = 0 then
								v.app_ask_computer_open
								open := io.last_integer

								if open = 1 then
									if c.random.item \\ 100 >= 50 then
										v.app_malware_infection
										m.set_system (0)
									else
										v.app_found_1000_bitcoin
										m.set_cash (m.cash + 1000)
									end

								end
							else if rand <= 50 then
								v.app_enemy_coder
								if c.dobattle ("Hacker", (m.level+2)*10, (m.level+2)*2, (m.level+2)*2) then
									v.app_won
								end
							else if rand = 99 then
								v.app_ask_bowl_investigate
								guac := io.last_integer

								if guac = 1 then
									v.app_quac_key
									m.set_system (m.system + 100)
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
					else if m.mainoption = 2 then
						c.merchant
					else if m.mainoption = 3 then
						c.invenread
					else if m.mainoption = 4 then
						c.statread
					else if m.mainoption = 5 then
						m.set_explored (false)
						m.set_room (m.room + 1)
					else if m.mainoption = 6 then
						m.set_selectitem (c.invenask)

						if c.inventory.array_item (m.selectItem).is_equal ("USB") then
							m.set_system (m.system + 15)
							v.app_need_usb_repaired_15
							c.inventory.go_i_th (m.selectItem)
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
