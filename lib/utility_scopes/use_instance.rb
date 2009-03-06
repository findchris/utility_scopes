module UtilityScopes
  module UseInstance
    
    def self.included(within)
      within.class_eval do
        named_scope :use, lambda { |obj|
          raise TypeError unless obj.is_a? self
          { :conditions => { :id => obj.id } }
        }
      end
    end
    
  end
end