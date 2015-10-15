# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

# name = "bettysue"
# assert { name == "bettysue"  }
# assert { name == "billybob"}

# 2. Pseudocode what happens when the code above runs

Method assert yields to the block inside {}
if block yields false then print error message

# 3. Copy your selected challenge here
class CreditCard
def initialize(number)
	@number=number
	if @number.to_s.length != 16
		raise ArgumentError.new("Credit card number must be 16 digits!")
	end
end

def transform
	@number = @number.to_s.split(//).map!{ |x| x.to_i}
	c=0
	while c < @number.length
		if c.even?
			@number[c]=@number[c]*2
		end
		c+=1
	end
	@number.map!{|x| x.to_s.split(//)}.flatten!.map!{|x| x.to_i}
    @sum=@number.reduce(:+)
end

def validate
	@sum%10==0?true:false
end

def check_card
	transform
	validate
end
end

# 4. Convert your driver test code from that challenge into Assert Statements
card_1=CreditCard.new(1111111111111111)
assert {card_1.check_card==false}

card_2=CreditCard.new(4408041234567893)
assert {card_2.check_card==true}

# 5. Reflection