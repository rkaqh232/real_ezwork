package com.ez.work.domain;

import java.sql.Date;

//혜정, 민혁
public class Member {
	private String M_CODE;  //사원정보 			
	private String M_PASS;       		 
	private int M_WORK_C; 				
	private String M_PART_C; 	
	private int M_LEVEL;  	
	private String M_NAME;    			
	private String M_NAME_EN; 		
	private int M_PRI_NUMBER;  		  
	private String M_GENDER; 		
	private Date M_BIRTH;  			
	private String M_ARMY;   			
	private String M_MARRIAGE; 		
	private String M_TEL;       		
	private String M_MOBILE_TEL;   		
	private String M_EMAIL;        		
	private String M_ADDRESS;       		
	private Date M_JOIN_DATE;    	
	private String SC_NAME; //학력정보
	private String SC_MAJOR;
	private String SC_DEGREE;
	private String SC_ADDRESS;
	private Date   SC__GRAD_DAY;
	private String LG_NAME; //어학정보
	private String LG_TEST;
	private String LG_GRADE;
	private Date   LG_DATE;
	private String LG_ORGAN;
	private String LI_NAME; //자격증정보
	private String LI_ORGAN;
	private Date LI_DATE;
	
	
	
	public String getM_CODE() {
		return M_CODE;
	}
	public void setM_CODE(String m_CODE) {
		M_CODE = m_CODE;
	}
	public String getM_PASS() {
		return M_PASS;
	}
	public void setM_PASS(String m_PASS) {
		M_PASS = m_PASS;
	}
	public int getM_WORK_C() {
		return M_WORK_C;
	}
	public void setM_WORK_C(int m_WORK_C) {
		M_WORK_C = m_WORK_C;
	}
	public String getM_PART_C() {
		return M_PART_C;
	}
	public void setM_PART_C(String m_PART_C) {
		M_PART_C = m_PART_C;
	}
	public int getM_LEVEL() {
		return M_LEVEL;
	}
	public void setM_LEVEL(int m_LEVEL) {
		M_LEVEL = m_LEVEL;
	}
	public String getM_NAME() {
		return M_NAME;
	}
	public void setM_NAME(String m_NAME) {
		M_NAME = m_NAME;
	}
	public String getM_NAME_EN() {
		return M_NAME_EN;
	}
	public void setM_NAME_EN(String m_NAME_EN) {
		M_NAME_EN = m_NAME_EN;
	}
	public int getM_PRI_NUMBER() {
		return M_PRI_NUMBER;
	}
	public void setM_PRI_NUMBER(int m_PRI_NUMBER) {
		M_PRI_NUMBER = m_PRI_NUMBER;
	}
	public String getM_GENDER() {
		return M_GENDER;
	}
	public void setM_GENDER(String m_GENDER) {
		M_GENDER = m_GENDER;
	}
	public Date getM_BIRTH() {
		return M_BIRTH;
	}
	public void setM_BIRTH(Date m_BIRTH) {
		M_BIRTH = m_BIRTH;
	}
	public String getM_ARMY() {
		return M_ARMY;
	}
	public void setM_ARMY(String m_ARMY) {
		M_ARMY = m_ARMY;
	}
	public String getM_MARRIAGE() {
		return M_MARRIAGE;
	}
	public void setM_MARRIAGE(String m_MARRIAGE) {
		M_MARRIAGE = m_MARRIAGE;
	}
	public String getM_TEL() {
		return M_TEL;
	}
	public void setM_TEL(String m_TEL) {
		M_TEL = m_TEL;
	}
	public String getM_MOBILE_TEL() {
		return M_MOBILE_TEL;
	}
	public void setM_MOBILE_TEL(String m_MOBILE_TEL) {
		M_MOBILE_TEL = m_MOBILE_TEL;
	}
	public String getM_EMAIL() {
		return M_EMAIL;
	}
	public void setM_EMAIL(String m_EMAIL) {
		M_EMAIL = m_EMAIL;
	}
	public String getM_ADDRESS() {
		return M_ADDRESS;
	}
	public void setM_ADDRESS(String m_ADDRESS) {
		M_ADDRESS = m_ADDRESS;
	}
	public Date getM_JOIN_DATE() {
		return M_JOIN_DATE;
	}
	public void setM_JOIN_DATE(Date m_JOIN_DATE) {
		M_JOIN_DATE = m_JOIN_DATE;
	}
	public String getSC_NAME() {
		return SC_NAME;
	}
	public void setSC_NAME(String sC_NAME) {
		SC_NAME = sC_NAME;
	}
	public String getSC_MAJOR() {
		return SC_MAJOR;
	}
	public void setSC_MAJOR(String sC_MAJOR) {
		SC_MAJOR = sC_MAJOR;
	}
	public String getSC_DEGREE() {
		return SC_DEGREE;
	}
	public void setSC_DEGREE(String sC_DEGREE) {
		SC_DEGREE = sC_DEGREE;
	}
	public String getSC_ADDRESS() {
		return SC_ADDRESS;
	}
	public void setSC_ADDRESS(String sC_ADDRESS) {
		SC_ADDRESS = sC_ADDRESS;
	}
	public Date getSC__GRAD_DAY() {
		return SC__GRAD_DAY;
	}
	public void setSC__GRAD_DAY(Date sC__GRAD_DAY) {
		SC__GRAD_DAY = sC__GRAD_DAY;
	}
	public String getLG_NAME() {
		return LG_NAME;
	}
	public void setLG_NAME(String lG_NAME) {
		LG_NAME = lG_NAME;
	}
	public String getLG_TEST() {
		return LG_TEST;
	}
	public void setLG_TEST(String lG_TEST) {
		LG_TEST = lG_TEST;
	}
	public String getLG_GRADE() {
		return LG_GRADE;
	}
	public void setLG_GRADE(String lG_GRADE) {
		LG_GRADE = lG_GRADE;
	}
	public Date getLG_DATE() {
		return LG_DATE;
	}
	public void setLG_DATE(Date lG_DATE) {
		LG_DATE = lG_DATE;
	}
	public String getLG_ORGAN() {
		return LG_ORGAN;
	}
	public void setLG_ORGAN(String lG_ORGAN) {
		LG_ORGAN = lG_ORGAN;
	}
	public String getLI_NAME() {
		return LI_NAME;
	}
	public void setLI_NAME(String lI_NAME) {
		LI_NAME = lI_NAME;
	}
	public String getLI_ORGAN() {
		return LI_ORGAN;
	}
	public void setLI_ORGAN(String lI_ORGAN) {
		LI_ORGAN = lI_ORGAN;
	}
	public Date getLI_DATE() {
		return LI_DATE;
	}
	public void setLI_DATE(Date lI_DATE) {
		LI_DATE = lI_DATE;
	}


}

	
