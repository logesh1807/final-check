package com.cognizant.moviecruiser.model;

import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Movie {
	private long Id;
	private String Title;
	private long BoxOffice;
	private boolean Active;
	private Date DateofLaunch;
	private String Genre;
	private boolean HasTeaser;

	public Movie(long id, String title, long boxOffice, boolean active, Date dateofLaunch, String genre,
			boolean hasTeaser) {
		super();
		this.Id=id;
		Title = title;
		BoxOffice = boxOffice;
		Active = active;
		DateofLaunch = dateofLaunch;
		Genre = genre;
		HasTeaser = hasTeaser;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public long getBoxOffice() {
		return BoxOffice;
	}

	public void setBoxOffice(long l) {
		BoxOffice = l;
	}

	public boolean isActive() {
		return Active;
	}

	public void setActive(boolean active) {
		Active = active;
	}

	public Date getDateofLaunch() {
		return DateofLaunch;
	}

	public void setDateofLaunch(Date dateofLaunch) {
		DateofLaunch = dateofLaunch;
	}

	public String getGenre() {
		return Genre;
	}

	public void setGenre(String genre) {
		Genre = genre;
	}

	public boolean isHasTeaser() {
		return HasTeaser;
	}

	public void setHasTeaser(boolean hasTeaser) {
		HasTeaser = hasTeaser;
	}

	public long getId() {
		// TODO Auto-generated method stub
		return Id;
	}

	@Override
	public String toString() {
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		NumberFormat box=NumberFormat.getInstance();
		String details = String.format("%-15s $.%10s %-10s %-15s %-15s %-10s", Title, box.format(BoxOffice), Active?"Yes":"No",
				sdf.format(DateofLaunch), Genre, HasTeaser?"Yes":"No");
		return details;
	}

	
}
