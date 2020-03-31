package com.yi.model;

public class Movie {
	private String title;
	private String content;
	private String file;
	private String time;

	public Movie() {
	}

	public Movie(String title, String content, String file, String time) {
		this.title = title;
		this.content = content;
		this.file = file;
		this.time = time;
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
		return "Movie [title=" + title + ", content=" + content + ", file=" + file + ", time=" + time + "]";
	}

}
