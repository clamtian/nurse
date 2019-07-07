package domain;

import java.util.Date;

public class User {
	/*
	ID	VARCHAR2	主键
	CUSTOMERNAME	VARCHAR2	客户姓名
	CUSTOMERAGE	NUMBER	年龄
	CUSTOMERSEX	VARCHAR2	性别
	IDCARD	VARCHAR2	身份证号
	ROOMID	VARCHAR2	房间号
	BUILDINGID	VARCHAR2	所属楼房
	RECORDID	VARCHAR2	档案号
	ELDERTYPE	VARCHAR2	老人类型
	CHECKINDATE	DATE	入住时间
	EXPIRATIONDATE	DATE	合同到期时间
	CONTACTTEL	VARCHAR2	联系电话
	BEDID	VARCHAR2	床号
	PSYCHOSOMATICSTATE	VARCHAR2	身心状况
	ATTENTION	VARCHAR2	注意事项
	BIRTHDAY	DATE	出生日期
	HEIGHT	VARCHAR2	身高
	*/

	private String id;
	private String username;
	private int userage;
	private String usersex;
	private String idcard;
	private String roomid;
	private String building;
	private String recordid;
	private String eldertype;
	private Date checkingdate;
	private Date expirationdate;
	private String contacttel;
	private String bedid;
	private String psytate;
	private String atten;
	private Date birthday;
	private String height;
	
	
	
	public User() {}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", userage=" + userage + ", usersex=" + usersex
				+ ", idcard=" + idcard + ", roomid=" + roomid + ", building=" + building + ", recordid=" + recordid
				+ ", eldertype=" + eldertype + ", checkingdate=" + checkingdate + ", expirationdate=" + expirationdate
				+ ", contacttel=" + contacttel + ", bedid=" + bedid + ", psytate=" + psytate + ", atten=" + atten
				+ ", birthday=" + birthday + ", height=" + height + "]";
	}

	public User(String id, String username, int userage, String usersex, String idcard, String roomid, String building,
			String recordid, String eldertype, Date checkingdate, Date expirationdate, String contacttel, String bedid,
			String psytate, String atten, Date birthday, String height) {
		super();
		this.id = id;
		this.username = username;
		this.userage = userage;
		this.usersex = usersex;
		this.idcard = idcard;
		this.roomid = roomid;
		this.building = building;
		this.recordid = recordid;
		this.eldertype = eldertype;
		this.checkingdate = checkingdate;
		this.expirationdate = expirationdate;
		this.contacttel = contacttel;
		this.bedid = bedid;
		this.psytate = psytate;
		this.atten = atten;
		this.birthday = birthday;
		this.height = height;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getUserage() {
		return userage;
	}

	public void setUserage(int userage) {
		this.userage = userage;
	}

	public String getUsersex() {
		return usersex;
	}

	public void setUsersex(String usersex) {
		this.usersex = usersex;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public String getRoomid() {
		return roomid;
	}

	public void setRoomid(String roomid) {
		this.roomid = roomid;
	}

	public String getBuilding() {
		return building;
	}

	public void setBuilding(String building) {
		this.building = building;
	}

	public String getRecordid() {
		return recordid;
	}

	public void setRecordid(String recordid) {
		this.recordid = recordid;
	}

	public String getEldertype() {
		return eldertype;
	}

	public void setEldertype(String eldertype) {
		this.eldertype = eldertype;
	}

	public Date getCheckingdate() {
		return checkingdate;
	}

	public void setCheckingdate(Date checkingdate) {
		this.checkingdate = checkingdate;
	}

	public Date getExpirationdate() {
		return expirationdate;
	}

	public void setExpirationdate(Date expirationdate) {
		this.expirationdate = expirationdate;
	}

	public String getContacttel() {
		return contacttel;
	}

	public void setContacttel(String contacttel) {
		this.contacttel = contacttel;
	}

	public String getBedid() {
		return bedid;
	}

	public void setBedid(String bedid) {
		this.bedid = bedid;
	}

	public String getPsytate() {
		return psytate;
	}

	public void setPsytate(String psytate) {
		this.psytate = psytate;
	}

	public String getAtten() {
		return atten;
	}

	public void setAtten(String atten) {
		this.atten = atten;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}
	
    
	
}
