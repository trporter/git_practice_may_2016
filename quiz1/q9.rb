class Book
  attr_accessor :title
  attr_accessor :chapters

  def initialize(title, chapters)
    @title = title
    @chapters = chapters
  end

  def add_chapters
    chapters = []
    puts "enter chapter title"
    title = gets.chomp
    chapters << title
  end

  def chapters
    puts "Your book: #{@title} has #{chapters.length} chapters:"
    chapters.each_with_index do |e,i|
      puts "#{i+1}. #{e}"
    end
  end
end
