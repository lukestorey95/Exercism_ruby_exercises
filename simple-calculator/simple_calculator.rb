class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    case operation
    when '+'
      result = first_operand + second_operand
    when '/'
      result = first_operand / second_operand
    when '*'
      result = first_operand * second_operand
    end

    if ALLOWED_OPERATIONS.include?(operation)
      "#{first_operand} #{operation} #{second_operand} = #{result}" 
    else
      raise UnsupportedOperation.new("#{operation} is not supported")
    end
  
    rescue ZeroDivisionError
      "Division by zero is not allowed."
    rescue TypeError
      raise ArgumentError.new("Invalid argument")
  end
end
