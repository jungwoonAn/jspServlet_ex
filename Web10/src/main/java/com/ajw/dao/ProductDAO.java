package com.ajw.dao;

public class ProductDAO {
	
	public ProductDAO() {}
	
	// 싱글톤 패턴
	private static ProductDAO instance = new ProductDAO();
	
	public static ProductDAO getInstance() {
		return instance;
	}

}
