import com.wzj.dao.AdminMapper;
import com.wzj.dao.UserMapper;
import com.wzj.model.Admin;
import com.wzj.model.User;
import com.wzj.model.UserExample;
import com.wzj.service.AdminService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/**
 * Created by kennywzj on 2019/4/18.
 */
public class MapperTest {

        private ApplicationContext applicationContext;

        @Autowired
        private AdminMapper mapper;

    @Autowired
    private AdminService service;
        @Before
        public void setUp() throws Exception {
            // 加载spring配置文件
            applicationContext = new ClassPathXmlApplicationContext("classpath:spring-mybatis.xml");
            // 导入需要测试的
            mapper = applicationContext.getBean(AdminMapper.class);
            service = applicationContext.getBean(AdminService.class);
        }



        @Test
        public void insert() throws Exception {
         service.deleteAdmin("hoho");
        }
    }


