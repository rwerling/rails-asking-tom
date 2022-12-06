class Argument < ApplicationRecord
  belongs_to :option
  validates_presence_of :argument_name, :score

  def emoji
    case score
    when 3 then '😀'
    when 2 then '🙂'
    when 1 then '🙁'
    when 0 then '😢'
    else
      '❓'
    end
  end
end
