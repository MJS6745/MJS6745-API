# frozen_string_literal: true

class Workout < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
end
