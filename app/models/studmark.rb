class Studmark < ApplicationRecord
    has_one :studprofile
    validates :firstname,:presence => true ,format: { with:/[a-zA-Z]/i, on: :create }
    validates :lastname,:presence => true ,format: { with: /[a-zA-Z]/, on: :create }
    validates :mark1,:presence => true
    validates :mark2,:presence => true
    validates :mark3,:presence => true
    before_save:calculate_total
    after_destroy:update_log

    def calculate_total
        self.total=self.mark1.to_i+self.mark3.to_i+self.mark2.to_i
    end
    def update_log
        logger.info "======Alas! A record has deleted with name #{self.firstname}===="
    end   
end
