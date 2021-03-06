class Luaby::AST::Block
  attr_reader :statements
  
  def initialize(statements)
    @statements = [*statements]
  end
  
  def to_lua
    statements.map(&:to_lua).join("\n").lines.map { |x| "#{Luaby::INDENT}#{x}" }.join
  end
end