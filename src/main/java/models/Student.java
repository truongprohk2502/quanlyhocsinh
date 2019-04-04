package models;

import org.springframework.stereotype.Component;


public class Student {
    private int id;
    private String name;
    private int age;
    private String address;
    private int sex; // 1: Male, 0: Female
    private String mclass;

    public Student(int id, String name, int age, String address, int sex, String mclass) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.address = address;
        this.sex = sex;
        this.mclass = mclass;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public String getMclass() {
        return mclass;
    }

    public void setMclass(String mclass) {
        this.mclass = mclass;
    }
}
