# ИДЗ №1

__Работу выполнил__: Рахманов Данила Дмитриевич

__Вариант__: 19

__Условие задачи__: Сформировать массив B из элементов массива A заменой нулевых элементов, предшествующих первому отрицательному, единицей.

## Что сделано в ИДЗ №1?

### Оценка 4-5:
- Приведено решение задачи на ассемблере. Ввод длины исходного массива, а также его заполнение осуществляется пользователем с клавиатуры. Вывод данных осуществляет в консоль.
- Присутсвуют комментарии, поясняющие выполняемые действия.
- В отчёте ниже приведены [Лог программы](https://github.com/flowykk/ABC/blob/main/%D0%98%D0%94%D0%97%20%E2%84%961/readme.md#%D0%BB%D0%BE%D0%B3-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B), результаты работы [Тестовой программы](https://github.com/flowykk/ABC/blob/main/%D0%98%D0%94%D0%97%20%E2%84%961/readme.md#%D0%BB%D0%BE%D0%B3-%D1%82%D0%B5%D1%81%D1%82%D0%BE%D0%B2%D0%BE%D0%B3%D0%BE-%D0%BF%D0%BE%D0%BA%D1%80%D1%8B%D1%82%D0%B8%D1%8F) и [Скриншоты](https://github.com/flowykk/ABC/blob/main/%D0%98%D0%94%D0%97%20%E2%84%961/readme.md#%D1%80%D0%B0%D1%81%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B8%D0%BC-%D0%BD%D0%B0-%D1%81%D0%BA%D1%80%D0%B8%D0%BD%D1%88%D0%BE%D1%82%D0%B0%D1%85-%D1%80%D0%B0%D0%B7%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B5-%D1%81%D0%B8%D1%82%D1%83%D0%B0%D1%86%D0%B8%D0%B8-%D0%B2%D1%85%D0%BE%D0%B4%D0%BD%D1%8B%D1%85-%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85-%D1%87%D1%82%D0%BE%D0%B1%D1%8B-%D0%BF%D0%BE%D0%BA%D0%B0%D0%B7%D0%B0%D1%82%D1%8C-%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%83-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D1%8B).

### Оценка 6-7:
- В программе присутствут подпрограммы с передачей аргументов через параметры.
- Присутсвуют комментарии, описывающие входные данные в макросах и подпрограммах.

### Оценка 8:
- Макросы и подпрограммы поддерживают многократное использование и корректно выыполняется с разными входными данными.
- Разработана тестирующая программа на Python, которая способна прогонять написанную на ассемблере программу с различными входными данными.

### Оценка 9:
- Присутствуют макросы, отвечающие за ввод и вывод данных, причем они поддерживают многократное использование с разными входнными данными.

### Оценка 10:
- Макросы выделены в отдельную библиотеку, которая подключается в главном файле.
  
## Код программы
### [Главный файл программы](main.asm)
### [Файл с библиотекой макросов](macrolib.asm)
### [Файл с тестовой программой](test.py)

## Логи выполнения программ
### Лог тестового покрытия
```
Тест №1
Входные данные от пользователя:
-21

Массив может быть длинной только от 1 до 10!! 

Тест №2
Входные данные от пользователя:
0

Массив может быть длинной только от 1 до 10!! 

Тест №3
Входные данные от пользователя:
65

Массив может быть длинной только от 1 до 10!! 

Тест №4
Входные данные от пользователя:
11

Массив может быть длинной только от 1 до 10!! 

Тест №5
Входные данные от пользователя:
3
0
-1
0

--------
Массивы до изменения: 
Массив А: 0 -1 0 
Массив B: 0 -1 0 
--------
Массивы после изменения: 
Массив А: 0 -1 0 
Массив B: 1 -1 0 
--------

Тест №6
Входные данные от пользователя:
4
1
0
-1
0

--------
Массивы до изменения: 
Массив А: 1 0 -1 0 
Массив B: 1 0 -1 0 
--------
Массивы после изменения: 
Массив А: 1 0 -1 0 
Массив B: 1 1 -1 0 
--------

Тест №7
Входные данные от пользователя:
5
0
14
0
-6
0

--------
Массивы до изменения: 
Массив А: 0 14 0 -6 0 
Массив B: 0 14 0 -6 0 
--------
Массивы после изменения: 
Массив А: 0 14 0 -6 0 
Массив B: 1 14 1 -6 0 
--------

Тест №8
Входные данные от пользователя:
6
3
0
0
-4
0
-1

--------
Массивы до изменения: 
Массив А: 3 0 0 -4 0 -1 
Массив B: 3 0 0 -4 0 -1 
--------
Массивы после изменения: 
Массив А: 3 0 0 -4 0 -1 
Массив B: 3 1 1 -4 0 -1 
--------

Тест №9
Входные данные от пользователя:
7
0
3
1
0
-9
0
0

--------
Массивы до изменения: 
Массив А: 0 3 1 0 -9 0 0 
Массив B: 0 3 1 0 -9 0 0 
--------
Массивы после изменения: 
Массив А: 0 3 1 0 -9 0 0 
Массив B: 1 3 1 1 -9 0 0 
--------

Тест №10
Входные данные от пользователя:
9
4
0
5
0
0
2
-3
3
0

--------
Массивы до изменения: 
Массив А: 4 0 5 0 0 2 -3 3 0 
Массив B: 4 0 5 0 0 2 -3 3 0 
--------
Массивы после изменения: 
Массив А: 4 0 5 0 0 2 -3 3 0 
Массив B: 4 1 5 1 1 2 -3 3 0 
--------

Тест №11
Входные данные от пользователя:
10
0
2
7
0
3
0
-4
0
-1
0

--------
Массивы до изменения: 
Массив А: 0 2 7 0 3 0 -4 0 -1 0 
Массив B: 0 2 7 0 3 0 -4 0 -1 0 
--------
Массивы после изменения: 
Массив А: 0 2 7 0 3 0 -4 0 -1 0 
Массив B: 1 2 7 1 3 1 -4 0 -1 0 
--------
```

## Лог программы
```
Введите число элементов массива: 5
Введите текущий элемент массива: 0
Введите текущий элемент массива: 1
Введите текущий элемент массива: -1
Введите текущий элемент массива: 0
Введите текущий элемент массива: 4
--------
Массивы до изменения: 
Массив А: 0 1 -1 0 4 
Массив B: 0 1 -1 0 4 
--------
Массивы после изменения: 
Массив А: 0 1 -1 0 4 
Массив B: 1 1 -1 0 4 
--------

-- program is finished running (0) --

Введите число элементов массива: 9
Введите текущий элемент массива: 0
Введите текущий элемент массива: 1
Введите текущий элемент массива: 2
Введите текущий элемент массива: 0
Введите текущий элемент массива: 0
Введите текущий элемент массива: -13
Введите текущий элемент массива: 12
Введите текущий элемент массива: 0
Введите текущий элемент массива: 1
--------
Массивы до изменения: 
Массив А: 0 1 2 0 0 -13 12 0 1 
Массив B: 0 1 2 0 0 -13 12 0 1 
--------
Массивы после изменения: 
Массив А: 0 1 2 0 0 -13 12 0 1 
Массив B: 1 1 2 1 1 -13 12 0 1 
--------

-- program is finished running (0) --

Введите число элементов массива: 0
Массив может быть длинной только от 1 до 10!! 

-- program is finished running (0) --

Введите число элементов массива: -10
Массив может быть длинной только от 1 до 10!! 

-- program is finished running (0) --

Введите число элементов массива: 11
Массив может быть длинной только от 1 до 10!! 

-- program is finished running (0) --

Введите число элементов массива: 14
Массив может быть длинной только от 1 до 10!! 

-- program is finished running (0) --

Введите число элементов массива: 10
Введите текущий элемент массива: 9
Введите текущий элемент массива: 0
Введите текущий элемент массива: 2
Введите текущий элемент массива: 3
Введите текущий элемент массива: 0
Введите текущий элемент массива: 0
Введите текущий элемент массива: -27
Введите текущий элемент массива: 21
Введите текущий элемент массива: 0
Введите текущий элемент массива: 4
--------
Массивы до изменения: 
Массив А: 9 0 2 3 0 0 -27 21 0 4 
Массив B: 9 0 2 3 0 0 -27 21 0 4 
--------
Массивы после изменения: 
Массив А: 9 0 2 3 0 0 -27 21 0 4 
Массив B: 9 1 2 3 1 1 -27 21 0 4 
--------

-- program is finished running (0) --

Введите число элементов массива: 3
Введите текущий элемент массива: 0
Введите текущий элемент массива: -1
Введите текущий элемент массива: 0
--------
Массивы до изменения: 
Массив А: 0 -1 0 
Массив B: 0 -1 0 
--------
Массивы после изменения: 
Массив А: 0 -1 0 
Массив B: 1 -1 0 
--------
```

## Рассмотрим на скриншотах различные ситуации входных данных, чтобы показать работу программы.
### Пользователем введено корректное число элементов массива. Массив B корректно скопировался на основе массива А. Оба массива корректно выводятся на экран. Изменения массива В выполнились правильно и результат был выведен на экран.
<img width="1440" alt="Снимок экрана 2023-10-12 в 20 39 11" src="https://github.com/flowykk/ABC/assets/71427624/3159b8ea-2226-4b1b-85bd-23fd2d3b09d4">
<img width="1440" alt="Снимок экрана 2023-10-12 в 20 39 41" src="https://github.com/flowykk/ABC/assets/71427624/0decbaa4-fd84-449e-b51d-919dd40e1b93">

### Некорректно задано число элементов массива. > 10.
<img width="1440" alt="Снимок экрана 2023-10-12 в 20 40 56" src="https://github.com/flowykk/ABC/assets/71427624/d0f15a1d-832f-41b3-90d2-67520dfc6f1a">

### Некорректно задано число элементов массива. < 1.
<img width="1440" alt="Снимок экрана 2023-10-12 в 20 40 39" src="https://github.com/flowykk/ABC/assets/71427624/5a92e2a9-55a6-4e42-b41c-17f044eb5867">

### Чуть больше тестов работы программы.
<img width="1440" alt="Снимок экрана 2023-10-12 в 20 45 18" src="https://github.com/flowykk/ABC/assets/71427624/bbb39840-a131-4216-91a6-3095ade6f2df">
<img width="1440" alt="Снимок экрана 2023-10-12 в 20 46 00" src="https://github.com/flowykk/ABC/assets/71427624/7a9895ce-e544-4eba-b072-4e64973aab54">

