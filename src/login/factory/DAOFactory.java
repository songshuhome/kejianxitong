package login.factory;


import login.dao.IDAO;
import login.dao.Impl.ADOImpl;

import java.sql.Connection;

public class DAOFactory {
 public static IDAO getDAOImplInstance(Connection conn){ return new ADOImpl(conn);}
}
