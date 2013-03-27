require "zen_pub/version"

module ZenPub
  extend ActiveSupport::Concern
  included do
    class_eval do
      attr_accessible :published, :published_at
      before_validation :set_published_at
    end
  end

  def to_verbose_param  # overridden
    if published?
      "#{self.published_at.year}/#{self.published_at.month}/#{self.published_at.day}/#{self.to_param}"
    else
      self.to_param
    end
  end

  private

  def set_published_at
    self.published_at = Time.new unless self.published_at_changed?
  end
end
