# XSLT
1. В папке Ispirer Systems находится 5 .xsl-файлов:  
	- Task-1.xsl  
	```
	Удаление узлов дерева:
	- Удаление узлов Procedure и Function, у которых нету дочерних элементов.
	- Удаление всех ПУСТЫХ атрибутов java_package из всех узлов дерева.
	```
	- Task-2.xsl  
	```
	Во всех узлах дерева, в которых атрибута target_type ПУСТАЯ - добавляется значение "UNKNOWN" в эту же
	атрибуту:
		Пример: <Function ID="11" ... target_type="UNKNOWN" .../>
	```
	- Task-3.xsl  
	```
	Выполняется выборка узлов Procedure и Function, в которых атрибута Name повторяется, чтобы в результате
	получилось дерево следующего вида:
   <root>
      <Functions>
         <!-- Список из функций с одинаковыми именами -->
         <Function ...>
            ...
         </Function>
      </Functions>
      <Procedures>
         <!-- Список из процедур с одинаковыми именами -->
         <Procedure ...>
            ...
         </Procedure>
      </Procedures>
   </root>
	```
	- Task-4.xsl  
	```
	Выполняется выборка узлов Object, в которых атрибута ID является чётной, так же эти узлы Object сортируются
	по возрастанию (значение атрибуты ID), чтобы в результате получилось дерево следующего вида:
   <Objects>
      <Object ID="8" ...>
         ...
      </Object>
      <Object ID="10" ...>
         ...
      </Object>
      ...
   </Objects>
	```
	- Task-5.xsl  
	```
	Для каждого узла Param, у которого атрибута Name повторяется с другими узлами Param - объединяются значения
	атрибут Name и pos:
		Пример: <Param ID="3" Name="p_LOGIN_ID1" pos="1" .../>
			<Param ID="4" Name="p_UPDATE_DATE2" pos="2" .../>
			...

	```
