package login.factory;


import login.service.DAOServiceImpl;
import login.service.IADOService;

public class SeriviceFactory {
    public static IADOService getDAOSeriviceImpl(){return new DAOServiceImpl();}
}
