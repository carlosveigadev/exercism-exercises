=begin
Write your code for the 'Resistor Color' exercise in this file. Make the tests in
`resistor_color_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color` directory.
=end
module ResistorColor
    #create an array with the colors and get the index accordinly.
    COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
    def self.color_code(color)
        return COLORS.index {|x| x == color.downcase}
    end
end
