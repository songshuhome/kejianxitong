package student.factory;

import student.service.IStudentLSService;
import student.service.IStudentSerive;
import student.service.IStudentsCourage;
import student.service.Impl.StudentLSService;
import student.service.Impl.StudentService;
import student.service.Impl.StudentsCourage;

public class ServiceFactory {
    public static IStudentSerive getStudentServiceInstance(){ return new StudentService(); }
    public  static IStudentLSService getStudentServiceLeaveInstance(){
        return  new StudentLSService();
    }
    public static IStudentsCourage getStudentCourage(){return new StudentsCourage();}
}
