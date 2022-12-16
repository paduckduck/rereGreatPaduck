package com.spring.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {

	@Autowired
	SqlSession sqlSession;
	public int insertBoard(BoardVO vo) {
		int result=sqlSession.insert("Board.insertBoard",vo);
		return result;
	}
	public int deleteBoard(int seq){
		int result=sqlSession.delete("Board.deleteBoard",seq);
		return result;
	}

	public int updateBoard(BoardVO vo){
		int result=sqlSession.update("Board.updateBoard",vo);
		return result;
	}

	class BoardRowMapper implements RowMapper<BoardVO> {
		@Override
		public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
			BoardVO vo=new BoardVO();
			vo.setSeq(rs.getInt("seq"));
			vo.setSize(rs.getString("size"));
			vo.setMaker(rs.getString("maker"));
			vo.setColor(rs.getString("color"));
			vo.setNumber(rs.getInt("number"));
			vo.setCoupon(rs.getString("coupon"));
			vo.setModel(rs.getString("model"));
			vo.setSales(rs.getInt("sales"));
			vo.setPrice(rs.getInt("price"));
			vo.setText(rs.getString("text"));
			return vo;
		}
	}
	public BoardVO getBoard(int seq){
		BoardVO one = sqlSession.selectOne("Board.getBoard", seq);
		return one;
	}
	public List<BoardVO> getBoardList(){
		List<BoardVO> list=sqlSession.selectList("Board.getBoardList");
		return list;
	}
}
