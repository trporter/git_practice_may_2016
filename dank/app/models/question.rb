class Question < ActiveRecord::Base
  #has many helps us set up association between question model and the asnwer model. in this case, has many assumes that the asnwers table has a field named questionid that is an integer(by convention). has many takes values like destroy and nullify. destroy will make rails automatically delete associate asnwers before deleting the question. nullify will make rails turn question id values of associated records to null before deleting the question
  has_many :answers, dependent: :destroy
  belongs_to :category
  belongs_to :user

  validates(:title,{presence: {message: "must be present!"}, uniqueness: true})
  validates :body, presence: true, length: {minimum: 7}, uniqueness: {scope: :title}
  validate :no_monkey
  validate :no_match

  after_initialize :set_defaults
  before_save :cap_title, :squeeze

  def self.recent(count)
    where("created_at > ?", count.days.ago)
  end

  def self.search (word)
    where("title ILIKE '%#{word}%'").where("body ILIKE '%#{word}%'")
  end

  def answers_new_first
    answers.order(created_at: :desc)
  end

  private

  def set_defaults
    self.view_count ||= 0
  end

  def cap_title
    self.title = title.capitalize
  end

  def squeeze
    self.title = title.squeeze(" ")
    self.body = body.squeeze(" ")
  end

  def no_monkey
    if title && title.downcase.include?("monkey")
      errors.add(:title, "No monkey please!")
    end
  end

  def no_match
    if body.include?(title)
      errors.add(:body, "No title match please!")
    end
  end
end
