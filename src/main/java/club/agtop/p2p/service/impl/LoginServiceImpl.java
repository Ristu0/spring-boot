package club.agtop.p2p.service.impl;

import club.agtop.p2p.dao.LoginDao;
import club.agtop.p2p.entity.Login;
import club.agtop.p2p.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginDao loginDao;

    @Override
    public long getLoginRowCount() {
        return loginDao.getLoginRowCount();
    }

    @Override
    public List<Login> selectLogin() {
        return loginDao.selectLogin();
    }

    @Override
    public Login selectLoginByObj(Login obj) {
        return loginDao.selectLoginByObj(obj);
    }

    @Override
    public Login selectLoginById(Integer id) {
        return loginDao.selectLoginById(id);
    }

    @Override
    public int insertLogin(Login value) {
        return loginDao.insertLogin(value);
    }

    @Override
    public int insertNonEmptyLogin(Login value) {
        return loginDao.insertNonEmptyLogin(value);
    }

    @Override
    public int deleteLoginById(Integer id) {
        return loginDao.deleteLoginById(id);
    }

    @Override
    public int updateLoginById(Login enti) {
        return loginDao.updateLoginById(enti);
    }

    @Override
    public int updateNonEmptyLoginById(Login enti) {
        return loginDao.updateNonEmptyLoginById(enti);
    }

    public LoginDao getLoginDao() {
        return this.loginDao;
    }

    public void setLoginDao(LoginDao loginDao) {
        this.loginDao = loginDao;
    }

}