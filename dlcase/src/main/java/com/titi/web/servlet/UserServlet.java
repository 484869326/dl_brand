package com.titi.web.servlet;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.titi.pojo.User;
import com.titi.service.UserService;
import com.titi.service.impl.UserServiceImpl;
import com.titi.util.CheckCodeUtil;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.IOException;

@WebServlet("/user/*")
public class UserServlet extends BaseServlet{
    private UserService userService=new UserServiceImpl();

    public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BufferedReader br = request.getReader();

        String params = br.readLine();//json字符串
        JSONObject loginState = JSON.parseObject(params);
        //1. 获取用户名和密码
        String username = loginState.getString("username");
        String password = loginState.getString("password");
        //获取复选框数据
        String remember = loginState.getString("remember");
        //2. 调用service查询
        User user = userService.login(username, password);
        response.setContentType("text/json;charset=utf-8");
        //3. 判断
        if(user != null){
            //判断用户是否勾选记住我
            Cookie c_remember = new Cookie("remember",remember);
            c_remember.setMaxAge( 60 * 60 * 24 * 7);
            c_remember.setPath("/");
            response.addCookie(c_remember);
            if("true".equals(remember)){
                //勾选了，发送Cookie
                //1. 创建Cookie对象
                Cookie c_username = new Cookie("username",username);
                Cookie c_password = new Cookie("password",password);
                // 设置Cookie的存活时间
                c_username.setMaxAge( 60 * 60 * 24 * 7);
                c_password.setMaxAge( 60 * 60 * 24 * 7);
                c_username.setPath("/");
                c_password.setPath("/");
                //2. 发送
                response.addCookie(c_username);
                response.addCookie(c_password);
            }else{
                Cookie c_username1 = new Cookie("username",username);
                Cookie c_password1= new Cookie("password",password);
                // 设置Cookie的存活时间
                c_username1.setMaxAge(0);
                c_password1.setMaxAge(0);
                c_username1.setPath("/");
                c_password1.setPath("/");
                //2. 发送
                response.addCookie(c_username1);
                response.addCookie(c_password1);
            }
            //将登陆成功后的user对象，存储到session
            HttpSession session = request.getSession();
            session.setAttribute("user",user);
            response.getWriter().write("success");
        }else {
            response.getWriter().write("用户名或密码错误");
        }
    }

    public void checkCode(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        // 生成验证码
        ServletOutputStream os = response.getOutputStream();
        String checkCode = CheckCodeUtil.outputVerifyImage(100, 50, os, 4);
        // 存入Session
        session.setAttribute("checkCodeGen",checkCode);
        System.out.println(checkCode);

    }

    public void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
       BufferedReader br=request.getReader();
        String params = br.readLine();//json字符串
        response.setContentType("text/json;charset=utf-8");
        JSONObject registerState = JSON.parseObject(params);
        //1. 获取用户名和密码
        String username = registerState.getString("username");
        String password = registerState.getString("password");
        // 获取用户输入的验证码
        String checkCode = registerState.getString("checkCode");
        if(username.equals("") ){
            response.getWriter().write("0");
            return;
        }
        if(password.equals("")){
            response.getWriter().write("1");
            return;
        }
        if(checkCode.equals("")){
            response.getWriter().write("验证码为空");
            return;
        }
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        // 程序生成的验证码，从Session获取
        String checkCodeGen = (String) session.getAttribute("checkCodeGen");
        // 比对
        if(!checkCodeGen.equalsIgnoreCase(checkCode)){
            response.getWriter().write("验证码错误");
            return;
        }
        //2. 调用service 注册
        boolean flag = userService.register(user);
        //3. 判断注册成功与否
        if(flag){
            //注册功能，跳转登陆页面
            response.getWriter().write("success");
        }else {
            //注册失败，跳转到注册页面
            response.getWriter().write("2");
        }
    }

    public void selectAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("user selectAll...");
    }


    public void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("user add...");
    }
}
