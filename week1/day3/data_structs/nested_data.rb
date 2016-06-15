hash = {
	:wat => ["a","b",{
		:wut => [1 , [["0x" , "1x","2x","3x","4x","5x","6x","7x","8x",{:bbq => "SOLUTION#1"},"10x"] , "one"] , 3 , 4]
		}]
}




puts hash[:wat][2][:wut][1][0][9][:bbq] #correct



arr = [
		[
			0,
			1,
			2,
			3,
			4,
			{
				:secret => {
					:unlock => ["0x1", "SOLUTION#2","0x3","0x4"]
				}
			},
			6
		]
]



puts arr[0][5][:secret][:unlock][1] # correct
