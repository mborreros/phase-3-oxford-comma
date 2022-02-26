require "pry"

def oxford_comma(array)
  if array.count == 1
    array.join
  elsif array.count == 2
    array.join(" and ")
  else array.count > 2
    oxford_comma = []
    og_final_element = array[-1]
    shortened_array = array.pop
    shortened_with_commas = array.join(", ")
    transformed_final_element = og_final_element.insert(0, ", and ")
    oxford_comma << shortened_with_commas
    oxford_comma << transformed_final_element
    result = oxford_comma.join
    result
  end
end