module HelperMethods
  array = []
  array << @title.split(" ")
  array.each do |x|
    unless x=="in"|| x=="the" || x=="of" || x=="and" || x=="or" || x=="from"
    x.capitalize
    end
  end
  array.join(' ')
  p array
end

module Blog
  class Article
    attr_accessor: title
    attr_accessor: body

    def initialize(title, body)
      @title = title
      @body = body
    end
  end

  class Snippet < Article
    include HelperMethods
    return array
    def body
      if @body.length < 100
        print @body
      end
      else
        print "#{@body[0..100]}..."
      end
    end
  end
end
