students = {}

while True:
    print("\n1. Add Student")
    print("2. Update Student")
    print("3. Show All Students")
    print("4. Exit")

    choice = input("Enter choice: ")

    if choice == "1":
        name = input("Enter name: ")
        grade = input("Enter grade: ")
        students[name] = grade

    elif choice == "2":
        name = input("Enter name to update: ")
        if name in students:
            grade = input("Enter new grade: ")
            students[name] = grade
        else:
            print("Student not found")

    elif choice == "3":
        print(students)

    elif choice == "4":
        break

    else:
        print("Invalid choice")
