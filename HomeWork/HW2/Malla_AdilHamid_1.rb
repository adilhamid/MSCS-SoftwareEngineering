class Class
    def attr_accessor_with_history(attr_name)
        attr_name = attr_name.to_s
        attr_reader attr_name
        attr_reader attr_name + "_history"

        # The Setter methods are defined in this way
        class_eval %Q{
            def #{attr_name}=(attr_name)
                @#{attr_name} = attr_name

                unless @#{attr_name + "_history"}
                    @#{attr_name + "_history"} = []
                    @#{attr_name + "_history"} << nil
                end
                @#{attr_name + "_history"} << attr_name
            end
        }
    end
end

class Foo
    attr_accessor_with_history :bar
end

t = Foo.new
t.bar = "test"
t.bar = 1
t.bar = :abc
p t.bar_history
t= Foo.new
t.bar = 9
p t.bar_history
