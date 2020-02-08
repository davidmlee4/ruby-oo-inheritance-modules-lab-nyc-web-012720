module Memorable
    module ClassMethods
        def reset_all #don't need to put self in front of these class methods as we will be extending
            self.all.clear
        end

        def count
            self.all.count
        end
    end

    module InstanceMethods
        def initialize
            self.class.all << self
        end
    end

end