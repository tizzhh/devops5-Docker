## Part 1. Готовый докер
- Взять официальный докер образ с nginx и выкачать его при помощи docker pull
![Part1.1](img/image.png)
- Проверить наличие докер образа через docker images
![Part1.2](img/image-1.png)
- Запустить докер образ через docker run -d [image_id|repository]
![Part1.3](img/image-2.png)
- Проверить, что образ запустился через docker ps
![Part1.4](img/image-3.png)
- Посмотреть информацию о контейнере через docker inspect [container_id|container_name]
![Part1.5](img/image-4.png)
- По выводу команды определить и поместить в отчёт размер контейнера, список замапленных портов и ip контейнера
- Размер
![Part1.6.1](img/image-5.png)
- список замапленных портов
![Part1.6.2](img/image-6.png)
- ip контейнера
![Part1.6.3](img/image-7.png)
- Остановить докер образ через docker stop [container_id|container_name]
![Part1.7](img/image-8.png)
- Запустить докер с портами 80 и 443 в контейнере, замапленными на такие же порты на локальной машине, через команду run
![Part1.8](img/image-9.png)
- Проверить, что в браузере по адресу localhost:80 доступна стартовая страница nginx
![Part1.9](img/image-10.png)
- вывод curl
![Part1.9.1](img/image-10.1.png)
- Перезапустить докер контейнер через docker restart [container_id|container_name]
![Part1.10](img/image-11.png)
- Проверить любым способом, что контейнер запустился
![Part1.11](img/image-12.png)
## Part 2. Операции с контейнером
- Прочитать конфигурационный файл nginx.conf внутри докер контейнера через команду exec
![Part2.1](img/image-13.png)
- Создать на локальной машине файл nginx.conf и настроить в нем по пути /status отдачу страницы статуса сервера nginx
![Part2.2](img/image-14.png)
- Скопировать созданный файл nginx.conf внутрь докер образа через команду docker cp
![Part2.3](img/image-15.png)
- Перезапустить nginx внутри докер образа через команду exec
![Part2.4](img/image-16.png)
- Проверить, что по адресу localhost:80/status отдается страничка со статусом сервера nginx
![Part2.5](img/image-17.png)
- Экспортировать контейнер в файл container.tar через команду export
![Part2.6](img/image-18.png)
- Остановить контейнер
![Part2.7](img/image-19.png)
- Удалить образ через docker rmi [image_id|repository], не удаляя перед этим контейнеры
![Part2.8](img/image-20.png)
- Удалить остановленный контейнер
![Part2.9](img/image-21.png)
- Импортировать контейнер обратно через команду import
![Part2.10](img/image-22.png)
- Запустить импортированный контейнер
![Part2.11](img/image-23.png)
- Проверить, что по адресу localhost:80/status отдается страничка со статусом сервера nginx
![Part2.12](img/image-24.png)