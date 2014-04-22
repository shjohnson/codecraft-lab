def run

`echo top`
`top -o cpu -n 10`
puts "your ip address is: #{`echo ipconfig getifaddr en0`}"

end

run