# frozen_string_literal: true

require_relative "tolase_palindrome/version"

module TolasePalindrome
    # Returns true for a palindrome, false otherwise.
    def palindrome?
        # processedContent = self.downcase
        processed_content == processed_content.reverse
    end

    private

        # Returns content for palindrome testing
        def processed_content
            self.scan(/[a-z\d]/i).join.downcase
        end
end

# Defines a phrase class (inheriting from string)
class String
  include TolasePalindrome
end

class Integer
    include TolasePalindrome
end

# module TolasePalindrome
#   class Error < StandardError; end
  
# end
