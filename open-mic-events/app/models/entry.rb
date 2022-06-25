class Entry < ApplicationRecord
    Obscenity.configure do |config|
        config.blacklist = ["angular", "react"]
    end

    validates :mic_name, :address, :date_of_show, presence: true
    validate :no_profane_text

    def day
        self.date_of_show.strftime("%b %e, %Y")
    end

    def no_profane_text
        if Obscenity.profane?(mic_name)
            errors.add(:mic_name, 'must not have bad words')
        end
    end
end
