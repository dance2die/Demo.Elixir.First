defmodule ModulePlayground do
    import IO, only: [puts: 1]
    import Kernel, except: [inspect: 1]
    
    def say_hello do
        inspect "Hello world!!!"
    end

    def inspect(param1) do
        puts "=============="
        puts param1
        puts "**************"
    end
end