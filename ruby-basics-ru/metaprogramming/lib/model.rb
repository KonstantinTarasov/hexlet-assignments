# frozen_string_literal: true

# BEGIN
module Model
  module ClassMethods
    attr_reader :shema

    def attribute(name, options = {})
      register_attribute(name, options)

      define_method(name) do 
        instance_variable_get("@#{name}")
      end

      define_method("#{name}=") do |value|
        instance_variable_set("@#{name}", value)
      end
    end

    private

    def register_attribute(name, options)
      @shema ||= {}
      @shema[name] = options
    end
  end

  def self.included(base)
    base.extend(ClassMethods)
  end

  def initialize(attributes = {})
    attributes.each do |key, value|
    # следующая итерация если ключь не в схеме
    next unless self.class.shema.keys.include?(key)
    
    instance_variale_set("@#{key}", value)
    end
  end

  def attributes()
    # вызывается инстанс вариабле cет 
    self.class.shema.keys.map do |attr_name|
      #  send вызывает у объекта, если есть метод метод будет вызван
      [atrr_name, send(attr_name)]
    end.to_h
  end
end
# END
