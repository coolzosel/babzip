package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import net.sf.json.JSONArray;
import util.DBUtil;

public class FoodDAO {

	// 리뷰 등록
	public static void writeContent(ReviewVO vo) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(
					"insert into customer(name, pwd, star, review, writeday, resnum) values(?,?,?,?, sysdate(), ?)");

			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getPwd());
			pstmt.setInt(3, vo.getStar());
			pstmt.setString(4, vo.getReview());
			pstmt.setInt(5, vo.getResnum());
			pstmt.executeUpdate();
		} catch (SQLException s) {
			s.printStackTrace();
			throw s;
		} finally {
			DBUtil.close(con, pstmt);
		}
	}

	
	// 리뷰 삭제
	public static void deleteContent(int num, String pwd) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("DELETE FROM customer WHERE num=? and pwd=?");
			pstmt.setInt(1, num);
			pstmt.setString(2, pwd);
			pstmt.executeUpdate();
		} catch (SQLException s) {
			s.printStackTrace();
			throw s;
		} finally {
			DBUtil.close(con, pstmt);
		}
	}

	// 리뷰 수정
	public static void updateContent(ReviewVO vo) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("UPDATE customer set star=?, review=? WHERE num=? AND pwd=?");

			pstmt.setInt(1, vo.getStar());
			pstmt.setString(2, vo.getReview());
			pstmt.setInt(3, vo.getNum());
			pstmt.setString(4, vo.getPwd());
			pstmt.executeUpdate();
		} catch (SQLException s) {
			s.printStackTrace();
			throw s;
		} finally {
			DBUtil.close(con, pstmt);
		}
	}

	// 모든 리뷰 조회
	public static JSONArray getAllContents() throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
//      ReviewVO[] list = null;
//      ArrayList<ReviewVO> alist = null;
		JSONArray alist = null;

		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("SELECT * from customer order by writeday desc");
			rset = pstmt.executeQuery();
//         alist = new ArrayList<>();
			alist = new JSONArray();

			while (rset.next()) {
				alist.add(new ReviewVO(rset.getInt(1), rset.getString(2), rset.getString(3), rset.getInt(4),
						rset.getString(5), rset.getString(6), rset.getInt(7)));
			}
		} finally {
			DBUtil.close(con, pstmt, rset);
		}
		return alist;
	}

	// 모든 음식점 조회
	public static JSONArray getAllFood() throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
//      ArrayList<FoodVO> flist = null;
		JSONArray flist = null;

		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("SELECT * from food");
			rset = pstmt.executeQuery();
			flist = new JSONArray();
			while (rset.next()) {
				flist.add(new FoodVO(rset.getInt(1), rset.getString(2), rset.getString(3), rset.getString(4),
						rset.getString(5), rset.getString(6), rset.getString(7), rset.getString(8)));
			}
		} finally {
			DBUtil.close(con, pstmt, rset);
		}
		return flist;
	}

}