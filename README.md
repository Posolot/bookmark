# Закладки для директорий

Этот скрипт позволяет вам добавлять закладки для директорий в вашей системе и быстро переходить к ним в будущем.

## Использование

1. **Скачайте скрипт**: Скопируйте содержимое скрипта `bookmark.sh` из репозитория на GitHub.
2. **Создайте скрипт**: Создайте файл `bookmark.sh` и вставьте в него содержимое скрипта.
3. **Установите права на выполнение**: Для того чтобы скрипт можно было запустить, необходимо установить на него права на выполнение. Выполните команду:

    ```bash
    chmod +x bookmark.sh
    ```

4. **Запустите скрипт**: Запустите скрипт с помощью команды:

    ```bash
    ./bookmark.sh
    ```

## Основные функции

- **Добавление закладки**: Вы можете добавить закладку для текущей директории, введя путь к ней.
- **Переход к закладке**: Скрипт предоставляет возможность перейти к ранее добавленным закладкам.
- **Ввод команды**: Если требуется выполнить другую команду, воспользуйтесь этой опцией.

## Примечание

- Убедитесь, что скрипт запускается в интерактивной оболочке, например, через Putty или терминал в Linux.
- После выбора закладки скрипт изменяет текущую директорию только для текущего процесса. Изменения не применяются к родительскому процессу, такому как ваша оболочка, поэтому для полноценного использования рекомендуется запускать скрипт с помощью `source` или `.`, чтобы изменения директории применились к вашей текущей оболочке.
