
def nyc_pigeon_organizer(data)

  goal = {}

  data.each do |color_gender_lives, value|

    data[color_gender_lives].each do |each_color_gen_li, names|

      #puts "each_color_gen_li #{each_color_gen_li}"

      # name
      counter = 0
      while counter < names.length do
        each_name = names[counter]

        counter += 1

        goal["#{each_name}"] = {}
        goal["#{each_name}"][:colors] = []
        goal["#{each_name}"][:gender] = []
        goal["#{each_name}"][:lives] = []


        #puts "names #{names} #{each_color_gen_li}"
        #puts "each_name #{each_name} #{each_color_gen_li}"
        #puts "goal.keys #{goal.keys}"


        index= 0
        while index < goal.keys.length do
          each_goal_name = goal.keys[index]
          if each_goal_name == each_name
            goal["#{each_name}"][:lives] << each_color_gen_li
          end
          index += 1
        end






      end

    end

  end

  return goal

end
