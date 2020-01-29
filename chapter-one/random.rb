# first exercice
def is_even n
  if n <= 1                                                             
    false
  elsif n >= 2 && n <= 2
    true
  else
    n = is_even(n - 2)
  end
end 


# second -> make an array generator
=begin
  array_generate(10) ==> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
=end
def array_generate size
  def aux_func(size, array = [], element = 1)
    if element > size
      array
    else
      aux_func(size, array.push(element), element + 1)
    end
  end

  aux_func(size)
end


