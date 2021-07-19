package model;

public class Comment {
	int idBinhLuan;
	String description;
	String dateComment;
	int rating;

	public Comment(int idBinhLuan, String description, String dateComment, int rating) {
		super();
		this.idBinhLuan = idBinhLuan;
		this.description = description;
		this.dateComment = dateComment;
		this.rating = rating;
	}

	public int getIdBinhLuan() {
		return idBinhLuan;
	}

	public void setIdBinhLuan(int idBinhLuan) {
		this.idBinhLuan = idBinhLuan;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDateComment() {
		return dateComment;
	}

	public void setDateComment(String dateComment) {
		this.dateComment = dateComment;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	@Override
	public String toString() {
		return "Comment [idBinhLuan=" + idBinhLuan + ", description=" + description + ", dateComment=" + dateComment
				+ ", rating=" + rating + "]";
	}

}
