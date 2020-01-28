

def fibbonacci size

  def function_auxilar(size, array = [1, 2], index = 2)
    if index > size
      array
    else
      function_auxilar(size, array.push(array[index - 2] + array[index - 1]), index + 1)
    end 
  end

  function_auxilar(size)
end 


puts fibbonacci(999)
