package com.xie.DAO;

import com.xie.beans.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({
        "classpath:/spring/spring-dao.xml"
})
public class UserDAOTest {



    @Autowired
    private UserDAO userDAO;
    
    @Test
    public void selectById() throws Exception {
        User user = userDAO.selectById(100);
        System.out.println(user);
    }

    @Test
    public void selectByName() throws Exception {
    }

}