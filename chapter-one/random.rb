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

# third -> return only even elements
=begin
  even_elements( [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] ) ==> [2, 4, 6, 8, 10]
=end
def even_elements array
  def aux_func(array, element, even_elements = [], index = 0)
    if index >= array.size
      even_elements
    else
      aux_func(array, array[index], even_elements.push(is_even(element) ? element : nil), index + 1)
    end
  end

  aux_func(array, array[0]).compact
end


# fourth -> return only palindromes numbers in an array
=begin
  even_elements( [..., 11, 12, 13] ) ==> [..., 11]
=end
def is_palindrome? word
  word.to_s.reverse == word.to_s ? true : false
end

def palindrome_numbers array
  def aux(array, container, element, index)
    if index >= array.size
      container
    else
      aux(array, container.push(is_palindrome?(element) ? element : nil), array[index], index + 1)
    end 
  end

  aux(array, [], array[0], 1).compact
end