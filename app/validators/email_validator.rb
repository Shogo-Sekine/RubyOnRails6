class EmailValidator < ActiveModel::EachValidator

    # def validate_each(record, attribute, value)
    #     puts "HOGEHOGHOEGE"
    #     puts value
    #     puts (value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i) == nil
    #     unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    #         record.errors[attribute] << (options[:message] || "2文字以上で入力してください")
    #     end
    #     record.errors.full_messages.each do |err|
    #         puts err
    #     end
    # end
    def validate_each(record, attribute, value)
        if value.empty? || value.count < 2
            record.errors[:attribute] << (options[:message] || "2文字以上で入力してください")
        end
    end
end