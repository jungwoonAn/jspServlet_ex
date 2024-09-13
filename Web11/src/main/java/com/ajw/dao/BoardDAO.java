package com.ajw.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ajw.dto.BoardVO;

import util.DBManager;

public class BoardDAO {
	// 싱글톤 패턴
	private BoardDAO() {}
	
	private static BoardDAO instance = new BoardDAO();

	public static BoardDAO getInstance() {
		return instance;
	}
	
	// 게시글 목록 Read
	public List<BoardVO> selectAllBoard(){
		String sql = "select * from board order by num desc";
		List<BoardVO> list = new ArrayList<BoardVO>();
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				BoardVO bVo = new BoardVO();
				bVo.setNum(rs.getInt("num"));
				bVo.setName(rs.getString("name"));
				bVo.setEmail(rs.getString("email"));
				bVo.setPass(rs.getString("pass"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setReadcount(rs.getInt("readcount"));
				bVo.setWritedate(rs.getTimestamp("writedate"));
				list.add(bVo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}
	
	// 게시글 삽입 Create
	public void insertBoard(BoardVO bVo) {
		String sql = "insert into board(num, name, email, pass, title, content) values(board_seq.nextval, ?, ?, ?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bVo.getName());
			pstmt.setString(2, bVo.getEmail());
			pstmt.setString(3, bVo.getPass());
			pstmt.setString(4, bVo.getTitle());
			pstmt.setString(5, bVo.getContent());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	// 게시글 상세보기할 때마다 글번호 증가
	public void updateReadCount(String num) {
		String sql = "update board set readcount++ where num=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	// 게시글 상세보기 Select
	public BoardVO selectOneBoardByNum(String num) {
		String sql = "";
		BoardVO bVo = new BoardVO();
		return bVo;
	}
	
	// 게시글 수정 Update
	public void updateBoard(BoardVO bVo) {
		String sql = "";
		
	}
	
	// 게시글 번호와 비밀번호 일치하는 레코드 반환
	public BoardVO checkPassWord(String pass, String num) {
		String sql = "";
		
		BoardVO bVo = new BoardVO();
		return bVo;
	}
	
	// 게시글 삭제 Delete
	public void deleteBoard(String num) {
		String sql = "";
		
	}
	
}
