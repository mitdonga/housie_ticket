=begin
	First, we will define positions for numbers. It will be represented as $ticket 2D array (3 rows x 9 columns).
	This 2D array will have elements TRUE & FALSE. TRUE means non-empty position and FALSE means empty position.
	
	Once the arrangement done, when we will assign numbers to non-empty cells based on the number range condition for particular column
=end


# Generate 1D array of length 9, where 5 elements are TRUE & 4 elements are FALSE (values will be randomly placed)
def generate_row
	arr = Array.new(9, true)                        # First assign TRUE to all elements
	zero_positions = (0..8).to_a.sample(4)          # Randomly pick 4 values from 0 to 8 to assign FALSE for empty positions
	zero_positions.each {|z| arr[z] = false}        # Assign FALSE that randomly picked positions
	arr																							# Return the array
end

# Generate the third row, based on 1st & 2nd. 
# Make sure that the column does not contain value FALSE for all 3 cells, there should be at least one TRUE value to place at the number
def generate_third_row
	arr, zeros = Array.new(9, true), 0                       
	while zeros != 4                                          # Loop will run until we have 4 FALSE elements in array
		num = rand(0..8)                                        # Randomly pick column between 0 to 8, where we will try make assign FALSE (make it empty)
		if ($ticket[0][num] || $ticket[1][num]) && arr[num]     # For particular column, 1st or 2nd row must be non-empty and third row must have default value TRUE
			arr[num] = false; zeros += 1
		end
	end
	arr
end

$ticket = []                                                     # Defined the global variable $ticket as an array
$ticket << generate_row << generate_row << generate_third_row    # Adding 3 rows to ticket, now A ticket is a grid of 3 rows by 9 columns

# We have conditions, like first column contains numbers from 1 to 9; 
# The second column numbers from 10 to 19; the third 20 to 29 and so on up until the last column, which contains numbers from 80 to 90.
# get_range function take an input of column no. and return the array of MAX and MIN of range
def get_range(num)
	return [1, 9] if num == 0
	return [num * 10, num * 10 + 9] if num < 8
	[80, 90]
end

# generate_ticket will actually assign numbers at every non empty positions of $ticket 2D array
def generate_ticket
	9.times do |col|
		column = [] << $ticket[0][col] << $ticket[1][col] << $ticket[2][col]
		open_positions = column.count(true)                                     # Count the non-empty positions for particular column
		min, max = *get_range(col)                                              # Get the MAX and MIN number range for particular column
		values = (min..max).to_a.sample(open_positions).sort                    # Randomly choose numbers and sort them in ascending order
		$ticket.each {|tk| tk[col] = tk[col] ? values.shift : "X" }             # Assign those numbers to non-empty positions (TRUE cells), and for blanks assign X
	end
end

# Print the $ticket in a readable format
def print_ticket
	generate_ticket                                              # First, call the generate_ticket to assign numbers to non-empty positions
	$ticket.each do |row|
		print "|"
    row.each {|cell| print " " + cell.to_s.center(3) + "|"}; puts
  end
end

print_ticket      # Calling print_ticket to print the actual ticket
