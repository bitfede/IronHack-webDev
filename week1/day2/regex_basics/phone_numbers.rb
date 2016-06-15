numbers = [
	"787-548-5388",
	"(787) 548-5388",
	"+1 787-548-5388",
	"+1 787 548 5388",
]

phone_regex = /\d{3}/

p (numbers[0] =~ phone_regex)