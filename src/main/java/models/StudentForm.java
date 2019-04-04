package models;

import org.springframework.stereotype.Component;

@Component
public class StudentForm {
    private String id;
    private String name;
    private String age;
    private String address;
    private String sex; // 1: Male, 0: Female
    private String mclass;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getMclass() {
        return mclass;
    }

    public void setMclass(String mclass) {
        this.mclass = mclass;
    }
}
