package services;

import models.Student;

import java.util.List;

public interface StudentManagerService {
    public boolean isNumberic(String str);
    public List<Student> getAllStudents();
    public void addStudent(Student student);
    public Student detailStudent(int id);
    public List<Student> findStudents(String text, int type);
    public void deleteStudent(int id);
    public void editStudent(Student s);
}
