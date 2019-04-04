package services;

import models.Student;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("studentManagerService")
public class StudentManagerServiceImpl implements StudentManagerService {
    private List<Student> students;

    public StudentManagerServiceImpl(){
        students = new ArrayList<>();
        students.add(new Student(1, "Nguyễn Đình Trường", 21, "Hà Tĩnh", 1, "16T1"));
        students.add(new Student(2, "Trần Trung Thông", 21, "Hà Tĩnh", 1, "16T2"));
        students.add(new Student(3, "Lê Thị Quỳnh Nhi", 21, "Huế", 0, "16T1"));
    }

    @Override
    public boolean isNumberic(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    @Override
    public List<Student> getAllStudents() {
        return students;
    }

    @Override
    public void addStudent(Student student) {
        students.add(student);
    }

    @Override
    public Student detailStudent(int id) {
        for (Student s : students) {
            if (s.getId() == id) {
                return s;
            }
        }
        return null;
    }

    @Override
    public List<Student> findStudents(String text, int type) {
        List<Student> findStudents = new ArrayList<>();
        switch (type) {
            case 1: // find by id
                if (isNumberic(text)) {
                    for (Student s : students) {
                        if (s.getId() == Integer.parseInt(text)) {
                            findStudents.add(s);
                            return findStudents;
                        }
                    }
                }
                break;
            case 2: // find by name
                for (Student s : students) {
                    if (s.getName().equals(text)) {
                        findStudents.add(s);
                    }
                }
                return findStudents;
            case 3: // find by age
                if (isNumberic(text)) {
                    for (Student s : students) {
                        if (s.getAge() == Integer.parseInt(text)) {
                            findStudents.add(s);
                        }
                    }
                }
                return findStudents;
            case 4: // find by address
                for (Student s : students) {
                    if (s.getAddress().equals(text)) {
                        findStudents.add(s);
                    }
                }
                return findStudents;
            case 5: // find by class
                for (Student s : students) {
                    if (s.getMclass().equals(text)) {
                        findStudents.add(s);
                    }
                }
                return findStudents;
        }
        return null;
    }

    @Override
    public void deleteStudent(int id) {
        for (Student s : students) {
            if (s.getId() == id) {
                students.remove(s);
                return;
            }
        }
    }

    @Override
    public void editStudent(Student s) {
        for (Student st : students) {
            if (st.getId() == s.getId()) {
                st.setName(s.getName());
                st.setAge(s.getAge());
                st.setAddress(s.getAddress());
                st.setSex(s.getSex());
                st.setMclass(s.getMclass());
                return;
            }
        }
    }
}
