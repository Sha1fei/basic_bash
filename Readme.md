##  Basic Commands
-   ```echo Hello world``` - принимает на вход строку и выводит ее
-   ```clear``` - очищает терминал
-   ```man ls``` - отображает документацию по командам
-   ```df``` - показывает инфо по свободному пространству `-hi` -человекоудобный интерфейс со стаистикой inodes
##  Directory Operations
-   ```pwd``` - текущая рабочая директория
-   ```cd``` - перемещение между директориями ./ - текущая диретория; ../ - родительская директория; ~ - домашняя директория
-   ```basename ~/IdeaProjects/basic_bash/output.txt``` - выводит конечное имя файла или директории
-   ```dirname``` - выводит предстоящее имя файла или директории
-   ```mkdir``` - создает директорию `-p` -создает все директории, даже если промежуточных каталогов нет
-   ```rmdir``` - удаляет только пустую дерикторию
-   ```rm -r``` - удаляет пустую и не пустую дерикторию рекурсивно
##  File commands
-   ```ls``` - отображает текущий список файлов и директорий (`-A` - + файлы начинающиеся с . `-l` - полное инфо о файле)
-   ```cp``` - копирует файл `cp ~/IdeaProjects/basic_bash/output.txt ~/IdeaProjects/basic_bash/outputFolder`; `-R` - делает копирование рекурсивно
-   ```mv``` - перемещает или переименовывает файл `mv ~/IdeaProjects/basic_bash/outputFolder/output.txt ~/IdeaProjects/basic_bash/outputFolder/output1.txt`
-   ```rm``` - удаляет файл
-   ```ln``` - создает ссылку на файлу ( `-s` - софт линк, указывает на путь расположения файла, а не сам файл) `ln -s ~/IdeaProjects/basic_bash/outputFolder/output1.txt ~/IdeaProjects/basic_bash/outputFolder/soft_link.txt`; без `-s` - hard link нельзя создать на директорию
-   ```wc Readm.md``` - отображает колличество сток слов и символов в файле
##  Shell Variables
-   ```export VALUE="Hello World``` - задание переменной с имененем VALUE, export - записать ее в переменные окружения
-   ```echo 'export VALUE="Hello World"' 1>> .zshrc``` - запись в .zshrc либо в .bashrc для доступа к переменной во всех теримналах, т.к. вызывается при его запуске. Также смотри еще .bash_profile и .zprofile для аутенфикации пользователя
-   ```source .zshrc``` - выполнить повторный запуск .zshrc, либо в .bashrc, аналог `. ./.zshrc` - работает только с текущей директорией
-   ```printenv VALUE``` - вывод переменных окружения; Можно вывести конерктную переменную указав ее имя; PATH - переменная где указаны директории, для поиска команд
##  Text Files Viewing 
-   ```cat``` - вывод в консоль сразу все содержимое файла (можно через пробел перечислять сразу несколько файлов)
-   ```nl``` - вывод в консоль сразу все содержимое файла с нумерацией строк
-   ```head``` - вывод на консоль топ 10 строк из большого файла (можно через -4 -указать выводимое колличество строк)
-   ```tail``` - вывод на консоль нижних 10 строк из большого файла
-   ```less``` - вывод в консоль содержимое файла c возможностью прокрутки
##  IO Basics
-   ```ls 1> output.txt``` - вывод standard output  в файл с именем output.txt; 1> - вывод с пперзаписью, 1>> - без перезаписи, 2> - вывод ошибки, 1&2>> - вывод с оибки и значения, часто сокращают до &>>
##  Pipes
-   ```ls | head -2 | wc``` - передача бинарных данных на вход и выход между программами с помощью pipes `|`
-   ```cd  ../ ; ls``` - комбинирование последовательного выполнения команд `;`
-   ```cd  ../ && ls``` - аналог `;` но вторая выполнится только ещи первая успешно выполнится, еще есть `||` - выполнится первая успешная команда
## Command history
-   ```tail .zsh_history``` - отображение всех выполненных команд которые хранятся в .zsh_history, либо ctrl+R - после -> для реадктирования лбио enter для выполнения, либо `history` $HISTSIZE -  колличество комманд хранимое в history (-c - параметр для очищения history)
-   ```!400``` - вызвать команду под номером 400
-   ```!!``` - вызвать предыдущую команду; 
## Text editor commands
-   ```nano ~/IdeaProjects/basic_bash/outputFolder/output1.txt``` - nano редактор, упаравление ctrl+Letter
-   ```vim ~/IdeaProjects/basic_bash/outputFolder/output1.txt``` - vim редактор, два режима comment и insert, переключние на insert - нажать i, выйти escape в comment, :q! -принудительно выйти из файла без записи, :wq - write and quit 
## File text Manipulation
-   ```cut ``` - извлечь колонку из файла `cut -d "," -f2-3 ~/IdeaProjects/basic_bash/outputFolder/output3.txt`, где `-d ","` - делиметр (`-w` аналог `-d " "`), `-f2-3` - указние извлекаемого столбца
-   ```paste``` - вставить один файл в другой `paste -d "," number.txt state.txt`  c разделителем `,`, `-s` ставка строками
-   ```tr``` - заменить одни значения сивоал на другие `tr c h` далее выводим заменяемое значение, выход из ввода ctrl+D
-   ```sort``` - отсортировать извлекаемый столбец по алфавиту, `-n` - отсортировать как числа
-   ```uniq``` - выводить только уникальные значения, `-c` выводить с подсчитанным количеством дубликатов
-   ```tee``` - записывает в файл и передает данные дальше `... | tee output4.txt | ...`
-   ```grep``` - nano редактор, уп