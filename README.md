# Домашнее задание к занятию "`Подъём инфраструктуры в Yandex Cloud`" - `Дёмин максим`


### Задание 1
Что нужно сделать:

Повторить демонстрацию лекции(развернуть vpc, 2 веб сервера, бастион сервер)

### Решение:
1. terraform init
2. terraform plan
3. terraform apply

<img width="1920" height="1080" alt="Screenshot_20260107_194025" src="https://github.com/user-attachments/assets/3c731a61-ab73-482c-949d-2f4205576b5b" />

<img width="1919" height="1079" alt="Screenshot_20260107_194054" src="https://github.com/user-attachments/assets/20a59926-05ca-4108-891f-71b7ca97b71e" />

4. ansible-playbook -i ./hosts.ini test.yml

<img width="1920" height="1080" alt="Screenshot_20260107_194715" src="https://github.com/user-attachments/assets/45dc35ff-170f-4ccc-88fa-e2fd65f42169" />

5. ssh -J demin@158.160.39.145 demin@10.0.1.15 и ssh -J demin@158.160.39.145 demin@10.0.2.16

<img width="1920" height="1080" alt="Screenshot_20260107_194942" src="https://github.com/user-attachments/assets/a986f94b-4b39-4d49-a9e3-d25830ec957f" />

### Задание 2
С помощью ansible подключиться к web-a и web-b , установить на них nginx.(написать нужный ansible playbook)

Провести тестирование и приложить скриншоты развернутых в облаке ВМ, успешно отработавшего ansible playbook.

### Решение:

1. ansible-playbook -i ./hosts.ini [nginx.yml](nginx.yml)

<img width="1920" height="1080" alt="Screenshot_20260107_200828" src="https://github.com/user-attachments/assets/f1c3ea72-6d76-4b57-83c9-243f8ef2b54a" />

<img width="1920" height="1080" alt="Screenshot_20260107_201035" src="https://github.com/user-attachments/assets/23de5786-b918-4383-b099-fd3047c4cb27" />

<img width="1920" height="1080" alt="Screenshot_20260107_201303" src="https://github.com/user-attachments/assets/30da51ee-8af8-4451-8380-e7125e1ebea1" />




Дополнительные задания* (со звёздочкой)
Их выполнение необязательное и не влияет на получение зачёта по домашнему заданию. Можете их решить, если хотите глубже и/или шире разобраться в материале.

### Задание 3*
Выполните действия, приложите скриншот скриптов, скриншот выполненного проекта.

Добавить еще одну виртуальную машину.
Установить на нее любую базу данных.
Выполнить проверку состояния запущенных служб через Ansible.

### Задание 4*
Изучите инструкцию yandex для terraform. Добейтесь работы паплайна с безопасной передачей токена от облака в terraform через переменные окружения. Для этого:

Настройте профиль для yc tools по инструкции.
Удалите из кода строчку "token = var.yandex_cloud_token". Terraform будет считывать значение ENV переменной YC_TOKEN.
Выполните команду export YC_TOKEN=$(yc iam create-token) и в том же shell запустите terraform.
Для того чтобы вам не нужно было каждый раз выполнять export - добавьте данную команду в самый конец файла ~/.bashrc
