package com.cognizant.moviecruiser.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.cognizant.moviecruiser.model.Favorite;
import com.cognizant.moviecruiser.model.Movie;


public class FavoriteDaoSqlImpl implements FavoriteDao {

	@Override
	public void addFavorite(long userId, long movieId) {
		Connection con = ConnectionHandler.getConnection();
		try {
			String sql = "INSERT INTO favorite(ft_us_id,ft_mo_id) VALUES (?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setLong(1, userId);
			ps.setLong(2, movieId);
			int count=ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	@Override
	public List<Movie> getAllFavorite(long userId) throws FavoriteEmptyException {
		Connection con = ConnectionHandler.getConnection();
		Favorite favorite = new Favorite();
		String sql = "SELECT mo_Title,mo_Boxoffice,mo_Active,mo_date_of_Launch,mo_Genre,mo_Has_Teaser FROM movie_list inner join favorite on ft_mo_id=mo_id where ft_us_id=?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setLong(1, userId);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Movie m = new Movie();
				m.setTitle(rs.getString(1));
				m.setBoxOffice(rs.getLong(2));
				m.setActive(rs.getString(3).equalsIgnoreCase("Yes"));
				m.setDateofLaunch(rs.getDate(4));
				m.setGenre(rs.getString(5));
				m.setHasTeaser(rs.getString(6).equalsIgnoreCase("Yes"));
				favorite.getMovieList().add(m);
			}
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return favorite.getMovieList();// TODO Auto-generated method stub
	}

	@Override
	public void removeFavorite(long userId, long movieId) throws FavoriteEmptyException {
		Connection con = ConnectionHandler.getConnection();
		try {
			String sql = "delete from favorite  where ft_us_id=? and ft_mo_id=? limit 1";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setLong(1, userId);
			ps.setLong(2, movieId);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();

			}
		}
	}

}
