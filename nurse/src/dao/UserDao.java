package dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import dao.UserDao;
import domain.User;
import utils.DataSourceUtils;

public class UserDao{


	public void regist(User user) {
		
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into customer values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
		try {
			qr.update(sql,user.getId(),user.getUsername(),user.getUserage(),user.getUsersex(),
					user.getIdcard(),user.getRoomid(),user.getBuilding(),user.getRecordid(),
					user.getEldertype(),user.getCheckingdate(),user.getExpirationdate(),
					user.getContacttel(),user.getBedid(),user.getPsytate(),user.getAtten(),
					user.getBirthday(),user.getHeight());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public List<User> findAll() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from customer";
		return qr.query(sql, new BeanListHandler<>(User.class));
	}
	
    public void delete(String id){
    	QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "delete from customer where id = ?";
		try {
			int i = qr.update(sql, id);
			System.out.println(i);
		} catch (SQLException e) {
			e.printStackTrace();
		}
    }
    public User getById(String id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from customer where id = ?;";
		return qr.query(sql, new BeanHandler<>(User.class),id);
	}
    public void update(User user) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="update customer set username = ?,userage = ? ,usersex=?,idcard=?,"
				+ "roomid = ?,building = ?,recordid=? ,eldertype = ?, checkingdate = ?,"
				+ "expirationdate = ?, contacttel = ?, bedid = ?, psytate = ?,"
				+ "atten = ?, birthday = ?, height = ? where id =? ";
		qr.update(sql,user.getUsername(),user.getUserage(),user.getUsersex(),
				user.getIdcard(),user.getRoomid(),user.getBuilding(),user.getRecordid(),
				user.getEldertype(),user.getCheckingdate(),user.getExpirationdate(),
				user.getContacttel(),user.getBedid(),user.getPsytate(),user.getAtten(),
				user.getBirthday(),user.getHeight(),user.getId());
		
	}
	
	
	
	
	
	
	
	
	
	
	public User getUserByCode(String code) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from user where code = ?;";
		try {
			return qr.query(sql, new BeanHandler<>(User.class),code);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	


	public User login(String username, String password) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from user where username = ? and password = ? limit 1;";
		try {
			return qr.query(sql, new BeanHandler<>(User.class),username,password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
