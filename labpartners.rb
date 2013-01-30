names = ['Adi Singh', 'Adrian Sandy', 'Alex Fogg', 'Anthony Contreras', 'Ben Clayman', 'Brian Yingling', 'Bryan Reid', 'Chloe Stinetorf', 'Eric Holland', 'Jane Sternbach', 'Jeff Katz', 'Jillian Youngblood', 'Joe Waine', 'Luke Walker', 'Matt Galvin' 'Nick Blanchet', 'Nicky Hughes', 'Ralph Bernardo', 'Ron Jones', 'Ryan Lee', 'Sandip Trivedi', 'Sean Marzug-McCarthy', 'Shefali Friesen', 'Simon Wong', 'Stephen Bae']

print "How many people do you want in each group? "
num = gets.to_i

names = names.shuffle
left_over = 25 % num
groups = (25/num).to_i
low_num = 0
i=0
arraynames= []

groups.times do
  arraynames << names[low_num, num]
  low_num = low_num + num
  i=i+1
end

n=-1
if left_over > 0
  left_over.times do
    arraynames[-1] << names[n]
    n=n-1
  end
end

arraynames.each do |x|
    print "#{x}\n"
end


