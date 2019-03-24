%File system with visitor design pattern
declare

class Visitor from BaseObject
   meth visit 
      skip
   end
end

class CreatorVisitor from Visitor
   meth visit(Cosa)
      {Browse Cosa} %Creo que acá necesito un case para saber si la cosa es un file o un folder
   end
   meth tester
      {self visit(2)}
   end
end


Test = {New CreatorVisitor noop}
{Test tester}

%****************************************ELEMENTS
class Visitable from BaseObject
   meth accept(Visitor)
      skip
   end
end

class Folder from Visitable
		
   attr files folders
      
   feat name
 
   meth accept(Visitor)
      {Visitor visit(self)}
   end		
end

      

