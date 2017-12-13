package student.service.Impl;

import student.factory.StudentFactory;
import student.service.IStudentLSService;
import vo.*;
import util.dbc.DatabaseConnection;

import java.sql.SQLException;

public class StudentLSService implements IStudentLSService{
    DatabaseConnection jdbc=new DatabaseConnection();


    @Override
    public boolean updateSignStudent(student vo) throws SQLException {
        try {
            if (StudentFactory.getStudentLSInstance(this.jdbc.getConn()).updateSign(vo))
                return true;
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            this.jdbc.close();
        }
        return false;
    }


    @Override
    public boolean updateLeaveStudent(student vo) throws SQLException {
        try {
            if (StudentFactory.getStudentLSInstance(this.jdbc.getConn()).updateLeave(vo))
                return true;

        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            this.jdbc.close();
        }
        return  false;
     }




}
