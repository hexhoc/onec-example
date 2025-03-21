
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	//Пример:
	//Добавление группы страниц
	//Добавление страниц
	//Добавление элементов на страницы
	
	СтраницыФормы = Элементы.Добавить(
		"СтраницыФормы",
		Тип("ГруппаФормы"),
		ЭтаФорма);
		
	СтраницыФормы.Вид = ВидГруппыФормы.Страницы;
	
	//Подключить обработчик при смене страницы
	СтраницыФормы.УстановитьДействие("ПриСменеСтраницы", "ДействиеПриСменеСтраницы");
	
	//Добавление 1-й страницы
	СтраницаФормы1 = Элементы.Добавить(
		"Страница1",
		Тип("ГруппаФормы"),
		СтраницыФормы);
		
	СтраницаФормы1.Вид = ВидГруппыФормы.Страница;
	СтраницаФормы1.Заголовок = "Первая страница";
	
	//Добавление 2-й страницы
	СтраницаФормы2 = Элементы.Добавить(
		"Страница2",
		Тип("ГруппаФормы"),
		СтраницыФормы);
		
	СтраницаФормы2.Вид = ВидГруппыФормы.Страница;
	СтраницаФормы2.Заголовок = "Вторая страница";
	
	//Добавить поле ввода на страницу 1
	ПолеВвода = Элементы.Добавить("ФормаКомментарий", Тип("ПолеФормы"), СтраницаФормы1);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.Комментарий";
	
	//Добавить поле ввода на страницу 2
	ПолеВвода = Элементы.Добавить("ФормаКомментарий2", Тип("ПолеФормы"), СтраницаФормы2);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.Комментарий";
	
КонецПроцедуры

&НаКлиенте
Процедура ДействиеПриСменеСтраницы(Элемент)
	
	Сообщить("Изменена страница");
	
КонецПроцедуры