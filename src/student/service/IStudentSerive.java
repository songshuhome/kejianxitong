package student.service;

import java.sql.SQLException;
import java.util.List;

import vo.*;
public interface  IStudentSerive {
    /**
     * 定义课程查询接口
     * @return 成功返回true，失败返回flase
     * @throws SQLException
     */
    public List<courage> list(student vo)throws Exception;
}
