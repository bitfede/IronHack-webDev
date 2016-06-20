require_relative("../lib/Lexi.rb")

describe Lexiconomitron do 


  describe "#eat_t" do
    it "removes every letter t from the input" do
      @lexi = Lexiconomitron.new
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
    end

    describe "#reverse_words" do
    it "reverses letters in an array of words" do 
    	      @lexi = Lexiconomitron.new
    	expect(@lexi.reverse_words(["This", "is", "a", "boring", "test"])).to eq(["sihT", "si", "a", "gnirob", "tset"]) 	
    end
	end 

	describe "#retFL" do
    it "returns only first and last words of the array" do
       @lexi = Lexiconomitron.new
       expect(@lexi.retFL(["whats", "good", "homie"])).to eq(["whats", "homie"])
   	end
	end


	describe "#shazam" do
		it "reverses wordds, prints only first and last, eats the t's" do 
		@lexi = Lexiconomitron.new
		expect(@lexi.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])
	end
	end

	describe "#oompa_loompa" do
		it "returns words with less than three chars" do
	@lexi = Lexiconomitron.new
	expect(@lexi.oompa_loompa(["if", "you", "wanna", "be", "tmy", "lover"])).to eq(["if", "you", "be", "my"])

		end
		end



end
