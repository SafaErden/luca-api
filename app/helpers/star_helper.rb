module StarHelper
  def star?(question_id)
    Star.find_by('user_id = ? AND question_id= ?', User.first.id, question_id).present?
  end
end