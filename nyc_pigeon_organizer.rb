
def nyc_pigeon_organizer(data)

  goal = {}
  data.each do |color_gender_lives, value|
    value.each do |each_color_gen_li, name_arr|
      name_arr.each do |name| #breaking down the original data
       goal[name] = {:color => [], :gender => [], :lives => []} #putting structur in the goal
       end
      end
    end

  #inserting colors in the goal color array
  goal_names = goal.keys
    data[:color].each do |d_each_color, d_name_arr|
      d_name_arr.each do |d_each_name|
         #puts "d_each_name:::: #{d_each_name}"
         goal_names.each do |g_each_name|
          #puts "g_each_name #{g_each_name}"
          if d_each_name === g_each_name ##why triple == ?
          goal[d_each_name][:color] << d_each_color.to_s
           end
        end
      end      
  end


  goal_names = goal.keys
    data[:gender].each do |d_each_gender, d_name_arr|
      d_name_arr.each do |d_each_name|
         #puts "d_each_name:::: #{d_each_name}"
         goal_names.each do |g_each_name|
          #puts "g_each_name #{g_each_name}"
          if d_each_name === g_each_name ##why triple == ?
          goal[d_each_name][:gender] << d_each_gender.to_s
           end
        end
      end      
  end

  goal_names = goal.keys
    data[:lives].each do |d_each_lives, d_name_arr|
      d_name_arr.each do |d_each_name|
         #puts "d_each_name:::: #{d_each_name}"
         goal_names.each do |g_each_name|
          #puts "g_each_name #{g_each_name}"
          if d_each_name === g_each_name ##why triple == ?
          goal[d_each_name][:lives] << d_each_lives.to_s
           end
        end
      end      
  end
  return goal

end