puts 'Enter properly-formatted numeral below.'
print '>'

numeral = gets.chomp.strip.downcase
a = numeral.split('')
@aa = Array(a.map do |key, value|
	[key, if key == 'i'
			1
		elsif key == 'v'
			5
		elsif key == 'x'
			10
		elsif key == 'l'
			50
		elsif key == 'c'
			100
		elsif key == 'd'
			500
		else key == 'm'
			1000
		end]
	end)

@values = Array.new
@aa.each do |pair|
	@values << pair[1]
end

i = 0
while i < @values.count-1 do
	if @values[i] < @values[i+1]
		@aa[i][1] = @aa[i][1] *-1
	end
	i+=1
end

@values2 = Array.new
@aa.each do |pair|
	@values2 << pair[1]
end

@total_value = 0
@values2.each do |value|
	@total_value += value
end

puts "Your numeral #{numeral.upcase} represents the number #{@total_value}."