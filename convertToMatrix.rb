#!/usr/bin/env ruby 

codeword_array = [0,1,1,2,2,2,3,3,3,3]
matrix=Array.new
def distance(array1,array2)
 d_value = 0
 counter = 0
array1.each do |x|
   if x != array2[counter]
      d_value=d_value+1
   end
   counter=counter+1
end
    
    return d_value
end
checkvalue=0
codeword_size = 1
codeword_array = codeword_array.shuffle
matrix.push codeword_array
#puts codeword_array
#puts matrix.to_s
until codeword_size == 10
    codeword_array = codeword_array.shuffle
    matrix.each do |row|
            if distance(row,codeword_array) < 7
                   checkvalue = 0
                   break
            else 
                   checkvalue = 1
            end
        end
       if checkvalue == 1
            codeword_size = codeword_size+1
            matrix.push codeword_array
       end 
     
    end

    puts matrix.to_s