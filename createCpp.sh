#!/bin/bash

echo Veuillez ecrire un nom de class

read class1

h=".hpp"

class="$class1$h"

#CREATING HPP FILE

touch $class

printf  "#ifndef " > $class ; printf $class | tr '[:lower:]' '[:upper:]' | tr '.' '_' >> $class
echo >> $class
printf  "# define " >> $class ; printf $class | tr '[:lower:]' '[:upper:]' | tr '.' '_' >> $class
echo >> $class; echo >> $class
printf  "#include <iostream>" >> $class
echo >> $class
printf  "#include <string>" >> $class
echo >> $class ; echo >> $class

printf "class $class1\n{\n\n	public :\n\n	$class1();\n	$class1();\n	$class1($class1 const &c);\n	$class1 &operator=($class1 const &c);\n	~$class1();\n\n	private :\n\n};\n\n#endif" >> $class

#CREATING CPP FILE

c=".cpp"

class="$class1$c"

touch $class

printf "#include \"$class1$h\"\n\n" > $class
printf "$class1::$class1(void)\n{\n\n}\n\n" >> $class
printf "$class1::$class1(void)\n{\n\n}\n\n" >> $class
printf "$class1::$class1($class1 const &c)\n{\n	*this = c;\n}\n\n" >> $class
printf "$class1 &$class1::operator=($class1 const &c)\n{\n	return (*this);\n}\n" >> $class
printf "\n$class1::~$class1()\n{\n\n}" >> $class
