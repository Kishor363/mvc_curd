package com.mk.mvc.model;

import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BookCurd {
	
	
	@Override
	public String toString() {
		return "BookCurd [bookId=" + bookId + ", bookName=" + bookName + ", auther=" + auther + ", cost=" + cost
				+ ", publishDate=" + publishDate + ", language=" + language + "]";
	}
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer bookId;
	private String bookName;
	private String auther;
	private Double cost;
	private Date publishDate;
	private String language;
	
	
	public Integer getBookId() {
		return bookId;
	}
	public void setBookId(Integer bookId) {
		this.bookId = bookId;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getAuther() {
		return auther;
	}
	public void setAuther(String auther) {
		this.auther = auther;
	}
	public Double getCost() {
		return cost;
	}
	public void setCost(Double cost) {
		this.cost = cost;
	}
	public Date getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	
	
	
	

}
