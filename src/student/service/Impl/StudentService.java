package student.service.Impl;


import student.factory.StudentFactory;
import student.service.IStudentSerive;
import util.dbc.DatabaseConnection;
import vo.*;

import java.util.List;

public class StudentService implements IStudentSerive {
    DatabaseConnection dbc=new DatabaseConnection();
    @Override
    public List<courage> list(student vo) throws Exception {

        try{
        return StudentFactory.getStudentInstance(this.dbc.getConn()).findClass(vo);
    }catch (Exception e){
           throw e;
    }finally {
        this.dbc.close();
        }
        }
}
