#!/usr/bin/bash

# Подсчитать количество символов содержимого файлов:
# swablu, glalie, finneon, pidgeotto, camerupt
# отсортировать вывод по увеличению количества,
# ошибки доступа не подавлять и не перенаправлять
wc -c ~/lab0/buneary0/swablu ~/lab0/buneary0/glalie ~/lab0/buneary0/finneon ~/lab0/tirtouga1/pidgeotto ~/lab0/tirtouga1/chimchar | sort -n

# Вывести список имен и атрибутов файлов в директории
# totodile2, список отсортировать по возрастанию размера,
# ошибки доступа не подавлять и не перенаправлять
ls -lgoSr ~/lab0/totodile2 | grep -v '^total'

# Рекурсивно вывести содержимое файлов из директории
# lab0, имя которых заканчивается на 't', строки
# отсортировать по имени a->z, ошибки доступа перенаправить
# в файл в директории /tmp
cat ~/lab0/*/*t | sort 2>/tmp/error.log

# Вывести список имен и атрибутов файлов в директории buneary0,
# список отсортировать по убыванию размера, ошибки доступа
# перенаправить в файл в директории /tmp
ls -loSg ~/lab0/buneary0 2>/tmp/error.log

# Вывести четыре последних элемента рекурсивного списка имен
# и атрибутов файлов в директории lab0, начинающихся на символ
# 'c', список отсортировать по возрастанию количества жестких
# ссылок, ошибки доступа перенаправить в файл в директории /tmp
ls -Rlgo ~/lab0 2>/tmp/error.log | grep -v "^total" | grep " " | grep " c" | sort -rnk 2,2 | tail -n 4

# Рекурсивно вывести содержимое файлов с номерами строк из
# директории lab0, имя которых начинается на 'c', строки
# отсортировать по имени z->a, ошибки доступа перенаправить
# в файл в директории /tmp
cat -n ~/lab0/*/c* ~/lab0/c* 2>/tmp/error.log | sort -r -k 2,2
