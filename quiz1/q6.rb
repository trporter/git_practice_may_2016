require 'benchmark'

n = 1000000

Benchmark.bm do |x|
  x.report do
    n.times do
      def evenNumbers(n)
        i = 1
        loop do
          until i=n
            if i%2==0
              puts i
              i++
            end
            else
              i++
            end
          end
        end
      end
    end
  end
end
evenNumbers(20)
