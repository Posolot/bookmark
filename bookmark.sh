#!/bin/bash

# Путь к файлу, в котором будут храниться запомненные директории
bookmark_file="$HOME/.bookmarks"

# Проверяем, существует ли файл с закладками. Если нет, создаем его.
if [ ! -e "$bookmark_file" ]; then
    touch "$bookmark_file"
fi

# Функция для добавления закладки
add_bookmark() {
    echo "$1" >> "$bookmark_file"
    echo "Закладка добавлена: $1"
}

# Функция для перехода к закладке
goto_bookmark() {
    if [ -s "$bookmark_file" ]; then
        select dir in $(cat "$bookmark_file"); do
            if [ ! -z "$dir" ]; then
                cd "$dir" || { echo "Не удалось перейти к $dir"; return 1; }
                echo "Переход к $dir"
                break
            fi
        done
    else
        echo "Нет сохраненных закладок"
    fi
}

# Основной цикл программы
while true; do
    echo "1. Добавить закладку"
    echo "2. Перейти к закладке"
    echo "3. Ввести команду"
    echo "4. Выйти"

    read -p "Выберите действие: " choice

    case $choice in
        1) read -p "Введите путь к директории: " path
           add_bookmark "$path"
           ;;
        2) goto_bookmark
           ;;
        3) read -p "Введите команду: " command
           eval "$command"
           ;;
        4) echo "До свидания!"
           exit 0
           ;;
        *) echo "Неверный выбор. Попробуйте еще раз."
           ;;
    esac
done
