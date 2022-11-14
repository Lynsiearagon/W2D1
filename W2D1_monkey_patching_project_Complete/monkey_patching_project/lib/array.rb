# Monkey-Patch Ruby's existing Array class to add your own custom methods

class Array

    def span
        return nil if self.empty?
        self.max - self.min 
    end

    def average
        return nil if self.empty?
        self.sum.to_f / self.length
    end

    def median
        return nil if self.empty?
        sorted = self.sort
        length = self.length
        
        parted = sorted.partition.with_index { |el, i| i < (length / 2) }

        if self.length.odd?
            return sorted[length / 2]
        else
            return (parted[0][-1] + parted[1][0]) / 2.to_f
        end
    end

    def counts 
        count = Hash.new(0)
        self.each { |el| count[el] += 1 }
        count
    end

    def my_count(val)
        count = 0
        self.each { |el| count += 1 if el == val }
        count
    end

    def my_index(val)
        self.each_with_index { |el, i| return i if el == val }
        nil
    end

    def my_uniq
        new_arr = []
        self.each { |el| new_arr << el if !new_arr.include?(el) }
        new_arr
    end

    def my_transpose
        (0...self[0].length).map do |i|
            self.map { |subarr| subarr[i] }
        end
    end

    
end
