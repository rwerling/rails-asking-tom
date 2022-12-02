class Argument < ApplicationRecord
  belongs_to :option
  validates_presence_of :argument_name, :score

  def emoji
    case score
    when 2 then '😀'
    when 1 then '🙂'
    when -1 then '🙁'
    when -2 then '😢'
    else
      '❓'
    end
  end
end
