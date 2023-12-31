# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :participations
  has_many :events, through: :participations
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
