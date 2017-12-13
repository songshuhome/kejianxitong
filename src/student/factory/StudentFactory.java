package student.factory;


import student.dao.ILeave;
import student.dao.IStudent;
import student.dao.Icourages;
import student.dao.Imp.CourageImpl;
import student.dao.Imp.StudentImp;
import student.dao.Imp.StudentLS;

import java.sql.Connection;

public class StudentFactory {
    public static IStudent getStudentInstance(Connection conn){ return new StudentImp(conn); }
    public static ILeave getStudentLSInstance(Connection conn){
        return new StudentLS(conn);
    }
    public static Icourages getStudentCourgeInstance(Connection conn){ return new CourageImpl(conn);}
}
