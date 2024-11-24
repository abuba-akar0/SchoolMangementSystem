package sms.main;

import java.util.Arrays;

public class CheckClasspath {
    public static void main(String[] args) {
        String classpath = System.getProperty("java.class.path");
        String[] classpathEntries = classpath.split(";");
        System.out.println("Classpath entries:");
        Arrays.stream(classpathEntries).forEach(System.out::println);
    }
}