class Sale < ActiveRecord::Base

  def finished?
    ends_on < Date.current
  end

  def upcoming?
    start_on > Date.current
  end

  def active?
    !upcoming? && !finished?
  end

  #AR SCOPE -- we are querying sales
  def self.active
    where("sales.start_on <= ? AND sales.ends_on >= ?", Date.current, Date.current)
  end




end
