package com.tables;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name="note")
public class Note {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int id;
private String title;
private String content;



private Date addtime;
public Note() {
	super();
	// TODO Auto-generated constructor stub
}
public int getId() {
	return id;
}

public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public Date getAddtime() {
	return addtime;
}
public void setAddtime(Date addtime) {
	this.addtime = addtime;
}
public Note(String title, String content) {
	super();
	this.title = title;
	this.content = content;

	this.addtime=new Date();
}





}
