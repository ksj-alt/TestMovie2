package com.yi.model;

import java.util.Date;

public class MovieInfo {
	private String title;
	private String content;
	private String file;
	private String time;

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

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "MovieInfo [title=" + title + ", content=" + content + ", file=" + file + ", time=" + time + "]";
	}

}
