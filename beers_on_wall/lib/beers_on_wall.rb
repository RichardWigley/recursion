def beers_on_wall(number)
  return print 'no more bottles of beer on the wall' if number.zero?

  print "#{number} bottles of beer on the wall,\n"
  beers_on_wall number - 1
end
