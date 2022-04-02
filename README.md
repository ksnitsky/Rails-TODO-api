# README

[Live on Heroku](https://oblako-tt-konstantin.herokuapp.com/)
> Рут '/' пустой

# API-методы

* GET /projects — вернуть все проекты с задачами;

* POST /todos — создать новую задачу;
  > Пример отправляемых данных:
  ```json
    {
      "text": "Текст задачи",
      "project_title": "Название проекта"
    }
  ```

* PATCH /projects/id/todo/id — обновить задачу
    > Cтатус меняется на противоположный
