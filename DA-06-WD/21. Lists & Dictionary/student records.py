students = {
    "S001": {
        "Name": "Rahul Sharma",
        "Age": 17,
        "Class": 12,
        "Subjects": {
            "Mathematics": 89,
            "Physics": 78,
            "Chemistry": 82,
            "English": 90,
            "Computer Science": 85
        }
    },
    "S002": {
        "Name": "Priya Singh",
        "Age": 17,
        "Class": 12,
        "Subjects": {
            "Mathematics": 92,
            "Physics": 88,
            "Chemistry": 79,
            "English": 84,
            "Computer Science": 91
        }
    },
    "S003": {
        "Name": "Aman Gupta",
        "Age": 18,
        "Class": 12,
        "Subjects": {
            "Mathematics": 75,
            "Physics": 80,
            "Chemistry": 77,
            "English": 83,
            "Computer Science": 78
        }
    },
    "S004": {
        "Name": "Neha Verma",
        "Age": 17,
        "Class": 12,
        "Subjects": {
            "Mathematics": 95,
            "Physics": 89,
            "Chemistry": 91,
            "English": 87,
            "Computer Science": 93
        }
    },
    "S005": {
        "Name": "Rohan Mehta",
        "Age": 18,
        "Class": 12,
        "Subjects": {
            "Mathematics": 82,
            "Physics": 76,
            "Chemistry": 84,
            "English": 88,
            "Computer Science": 79
        }
    },
    "S006": {
        "Name": "Sneha Jain",
        "Age": 17,
        "Class": 12,
        "Subjects": {
            "Mathematics": 90,
            "Physics": 93,
            "Chemistry": 88,
            "English": 85,
            "Computer Science": 92
        }
    },
    "S007": {
        "Name": "Arjun Malik",
        "Age": 17,
        "Class": 12,
        "Subjects": {
            "Mathematics": 77,
            "Physics": 74,
            "Chemistry": 80,
            "English": 81,
            "Computer Science": 76
        }
    },
    "S008": {
        "Name": "Pooja Kumari",
        "Age": 18,
        "Class": 12,
        "Subjects": {
            "Mathematics": 85,
            "Physics": 90,
            "Chemistry": 86,
            "English": 89,
            "Computer Science": 88
        }
    },
    "S009": {
        "Name": "Vikram Singh",
        "Age": 17,
        "Class": 12,
        "Subjects": {
            "Mathematics": 91,
            "Physics": 84,
            "Chemistry": 87,
            "English": 92,
            "Computer Science": 90
        }
    },
    "S010": {
        "Name": "Riya Sharma",
        "Age": 18,
        "Class": 12,
        "Subjects": {
            "Mathematics": 79,
            "Physics": 82,
            "Chemistry": 85,
            "English": 80,
            "Computer Science": 83
        }
    }
}

print('*'*25)

for reg_no in students.keys():
    
    total_marks = sum(students[reg_no]['Subjects'].values())
    avg_marks   = sum(students[reg_no]['Subjects'].values()) / len(students[reg_no]['Subjects'].values())
    
    students[reg_no]['total_marks'] = total_marks
    students[reg_no]['average_marks'] = avg_marks
    
    print('Reg No : ', reg_no)
    print('Name   : ', students[reg_no]['Name'])
    print('Age    : ', students[reg_no]['Age'])
    print('Tatal  : ', students[reg_no]['total_marks'])
    print('Avg    : ', students[reg_no]['average_marks'])
    
 
    print('*'*20)
    print('')