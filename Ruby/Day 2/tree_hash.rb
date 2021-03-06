class Tree
	attr_accessor :children, :node_name

	def initialize(name, children = [])
		@children = children
		@node_name = name
	end

	def visit_all(&block)
		visit &block
		children.each {|c| c.visit_all &block}
	end

	def visit(&block)
		block.call self
	end

	def self.build_all(hash: Hash)
		parent
		hash.each do |k, v|
			parent = Tree.new(k)
			parent.build v
		end
		return parent
	end

	def build(hash)
		hash.each do |k, v|
			child = Tree.new(k)
			self.children.append(child)
			child.build v
		end
	end
end


tree = Tree.new("Ruby", [
	Tree.new("Alpha"),
	Tree.new("Beta")
])

puts 'visiting a node'
tree.visit {|node| puts node.node_name}
puts

puts 'visiting entire tree'
tree.visit_all {|node| puts node.node_name}

tree = Tree.bui
