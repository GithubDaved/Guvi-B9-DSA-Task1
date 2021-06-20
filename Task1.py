import mysql.connector
con = mysql.connector.connect(host="localhost", user="root", password="", database="mydatabase")
while True:
    print("Menu:")
    print("1.add student")
    print("2.get student")
    print("3.get all student")
    print("4.update student")
    print("5.delete student")
    print("6.exit")

    choice = int(input("enter the choice: "))

    if choice == 1:
        name = input("enter the name: ")
        dept = input("enter the dept: ")
        college = input("enter the college: ")
        mark1 = int(input("enter mark1: "))
        mark2 = int(input("enter mark2: "))
        mark3 = int(input("enter mark3: "))
        mark4 = int(input("enter mark4: "))
        mark5 = int(input("enter mark5: "))
        total_mark = int(mark1 + mark2 + mark3 + mark4 + mark5)
        average = int(total_mark / 5)
        if average > 80:
            grade = "A"
        else:
            grade = "B"

        cursor = con.cursor()
        sql = "insert into students (name, dept, college, mark1, mark2, mark3, mark4, mark5, total_mark, average, grade) values (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
        val = (name, dept, college, mark1, mark2, mark3, mark4, mark5, total_mark, average, grade)
        cursor.execute(sql, val)
        con.commit()
        print("added student successfully")

    elif choice == 2:
        id = int(input("get student id: "))
        cursor = con.cursor()
        cursor.execute("SELECT * FROM students WHERE id = %s", (id,))
        result = cursor.fetchall()
        if result == []:
            print("invalid id")
        else:
            print(result)


    elif choice == 3:
        # id = (input())
        cursor = con.cursor()
        cursor.execute("SELECT * FROM students")
        result = cursor.fetchall()
        for x in result:
            print(x)

    elif choice == 4:
        id = int(input("update student id: "))
        cursor = con.cursor()
        cursor.execute("SELECT * FROM students WHERE id = %s", (id,))
        result = cursor.fetchall()
        if result == []:
            print("invalid id")
        else:
            name = input("enter the name: ")
            dept = input("enter the dept: ")
            college = input("enter the college: ")
            mark1 = int(input("enter mark1: "))
            mark2 = int(input("enter mark2: "))
            mark3 = int(input("enter mark3: "))
            mark4 = int(input("enter mark4: "))
            mark5 = int(input("enter mark5: "))
            total_mark = int(mark1 + mark2 + mark3 + mark4 + mark5)
            average = int(total_mark / 5)
            if average > 80:
                grade = "A"
            else:
                grade = "B"

            cursor = con.cursor()
            sql = "update students set name=%s,dept=%s,college=%s,mark1=%s,mark2=%s,mark3=%s,mark4=%s,mark5=%s,total_mark =%s,average=%s,grade=%s where id=%s"
            val = (name, dept, college, mark1, mark2, mark3, mark4, mark5, total_mark, average, grade, id)
            cursor.execute(sql, val)
            con.commit()
            print("update student successfully")


    elif choice == 5:
        id = int(input("delete student id: "))
        cursor = con.cursor()
        cursor.execute("SELECT * FROM students WHERE id = %s", (id,))
        result = cursor.fetchall()
        if result == []:
            print("invalid id")
        else:
            cursor = con.cursor()
            sql = "delete from students where id = %s"
            val = (id,)
            cursor.execute(sql, val)
            con.commit()
            print("student id deleted successfully")


    elif choice == 6:
        break

    else:
        print("invalid choice, please try again")
