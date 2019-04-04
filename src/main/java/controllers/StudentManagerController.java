package controllers;

import models.Student;
import models.StudentForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import services.StudentManagerService;

import java.util.List;

@Controller
public class StudentManagerController {
    @Autowired
    private StudentManagerService service;

    @GetMapping("/students")
    public String index(Model model) {
        model.addAttribute("students", service.getAllStudents());
        return "index";
    }

    @GetMapping("/add")
    public ModelAndView addStudent() {
        return new ModelAndView("add", "studentForm", new StudentForm());
    }

    @PostMapping("/add")
    public String addProcess(@ModelAttribute("studentForm") StudentForm student, Model model) {
        Student s = new Student(
                Integer.parseInt(student.getId()),
                student.getName(),
                Integer.parseInt(student.getAge()),
                student.getAddress(),
                Integer.parseInt(student.getSex()),
                student.getMclass()
        );

        // check id has existed
        for (Student si : service.getAllStudents()) {
            if (si.getId() == s.getId()) {
                model.addAttribute("id_existed", 1); // 1: id has existed, 0: id does not exist
                model.addAttribute("student", s);
                return "add";
            }
        }

        // if id does not exist
        service.addStudent(s);
        return "redirect:/students";
    }

    @GetMapping("/detail")
    public String detailStudent(@RequestParam String id, Model model) {
        if (service.isNumberic(id)) {
            Student s = service.detailStudent(Integer.parseInt(id));
            if (s != null) {
                model.addAttribute("student", s);
                return "detail";
            }
        }
        return "error";
    }

    @PostMapping("/find")
    public String findStudent(@RequestParam String find_text, @RequestParam String find_type, Model model) {
        try {
            List<Student> findStudents = service.findStudents(find_text, Integer.parseInt(find_type));
            if (findStudents != null) {
                model.addAttribute("find_students", findStudents);
                model.addAttribute("status", 1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "find";
    }

    @GetMapping("/delete")
    public String deleteStudent(@RequestParam String id, Model model) {
        model.addAttribute("id", id);
        return "delete";
    }

    @PostMapping("/delete")
    public String deleteProcess(@RequestParam String id, Model model) {
        if (service.isNumberic(id)) {
            service.deleteStudent(Integer.parseInt(id));
            return "redirect:/students";
        }
        return "error";
    }

    @GetMapping("/edit")
    public ModelAndView editStudent(@RequestParam String id, Model model) {
        try {
            Student s = service.findStudents(id, 1).get(0);
            model.addAttribute("student", s);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ModelAndView("edit", "studentForm", new StudentForm());
    }

    @PostMapping("/edit")
    public String editProcess(@ModelAttribute("studentForm") StudentForm student, @RequestParam String id, Model model) {
        Student s = new Student(
                Integer.parseInt(id),
                student.getName(),
                Integer.parseInt(student.getAge()),
                student.getAddress(),
                Integer.parseInt(student.getSex()),
                student.getMclass()
        );
        service.editStudent(s);
        return "redirect:/students";
    }
}
