class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|
      define_method(name) do
        self.instance_variable_get("@#{name}")
      end
      define_method("#{name}=") do |rename|
        self.instance_variable_set("@#{name}", rename)
      end
    end
  end
end
