package student.dao;

import java.sql.SQLException;
import java.util.List;

import vo.*;

public interface Icourages {
    /**
     * 实现课表查询操作
     */
    public List<courage> Icourages(String sid)throws SQLException;
}
