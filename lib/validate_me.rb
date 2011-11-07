module ActiveRecord #:nodoc:
  module ValidateMe #:nodoc:
    def self.included(base)
      base.extend(ClassMethods)
    end
    
    module ClassMethods
      def validate_me(*args)
        puts args
      end

    end
  end
end

ActiveRecord::Base.send(:include, ActiveRecord::ValidateMe)