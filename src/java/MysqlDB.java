/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author hp
 */
import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
public class MysqlDB {
    Connection con = null;
    String sSql = "";
    Statement statement;
    private String username="root";
    private String password="root";
    String url="jdbc:mysql://localhost:3306/filevaultdb";
    
    private void getConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url,username,password);
        }catch(Exception e){
            System.out.print(e);
        }
    }
    public boolean Register_User(String sUserName, String sInstitute, String sEmail, String sPassword){
        sSql ="Insert into user_master(User_Name,User_Institute,User_Email,User_Password,User_Active_Status)Values('"+ sUserName+"','"+ sInstitute +"','"+ sEmail +"','"+ sPassword +"','N')";
        getConnection();
        try{
            
            Statement st= con.createStatement(); 
            int i=st.executeUpdate(sSql);
            st.close();
            con.close();
        }catch(Exception e){
            System.out.print(e);
        }
        finally{
            
        }
        
        return true;
    }
    public ResultSet getUserList(){
        ResultSet resultset = null;
        getConnection();
        try{
            sSql = "select User_id, User_Name,User_Institute,User_Email,User_Active_Status from user_master;";
            statement = con.createStatement();
            resultset = statement.executeQuery(sSql);
        }catch(Exception e){
            System.out.print(e);
        }
        return resultset;
    }
    public void setApproval(String sValue){
        sSql ="update user_master set User_Active_Status = 'Y' Where User_id in ("+ sValue +"0);";
         getConnection();
         try{
            Statement st= con.createStatement(); 
            int i=st.executeUpdate(sSql);
            st.close();
            con.close();
        }catch(Exception e){
            System.out.print(e);
        }
        finally{
            
        }
    }
    public boolean Upload_File(String sFileName, String sFileType, String sFile_Desc, String sUser_Id, String sFilePws){
        sSql ="Insert into file_master(File_Name, File_Type, File_Desc, User_id, File_Password)Values('"+ sFileName+"','"+ sFileType +"','"+ sFile_Desc +"',"+ sUser_Id +","+ sFilePws +")";
        getConnection();
        try{
            
            Statement st= con.createStatement(); 
            int i=st.executeUpdate(sSql);
            st.close();
            con.close();
        }catch(Exception e){
            System.out.print(e);
        }
        finally{   
        }
        return true;
    }
    public String Check_User_Login(String sUserName, String sPassword){
        ResultSet resultset = null;
        String sUSer_id="0";
        getConnection();
        try{
            sSql = "select User_id from user_master Where User_Email = '"+ sUserName +"' and User_Password = '"+ sPassword +"' and User_Active_Status = 'Y';";
            statement = con.createStatement();
            resultset = statement.executeQuery(sSql);
            if(resultset.next())
            sUSer_id = resultset.getString(1);
            resultset.close();
            con.close();
        }catch(Exception e){
            System.out.print(e);
        }
        return sUSer_id;
    }
    public ArrayList<clsFileDetail> getFileDtls(String sFileType){
        ArrayList<clsFileDetail> arrFileDtls = new ArrayList<clsFileDetail>();
        ResultSet resultset = null;
        getConnection();
        try{
            sSql = "select File_id, File_name, File_Type, File_Desc,File_Password, user_master.User_id, User_name  from file_master inner join user_master on file_master.User_id = user_master.user_id where File_type REGEXP '"+ sFileType +"';";
            statement = con.createStatement();
            resultset = statement.executeQuery(sSql);
            while(resultset.next()){
                clsFileDetail clsFileDtl = new clsFileDetail(resultset.getString("File_id"), resultset.getString("File_name"), resultset.getString("File_Type"), resultset.getString("File_Desc"), resultset.getString("User_name"), resultset.getString("File_Password"));
                arrFileDtls.add(clsFileDtl);
            }
            resultset.close();
            con.close();
        }catch(Exception e){
            System.out.print(e);
        }
        return arrFileDtls;
    }
}
