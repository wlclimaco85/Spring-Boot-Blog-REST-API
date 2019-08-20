package com.sopromadze.blogapi.payload.post;

import java.util.List;

import com.sopromadze.blogapi.payload.audit.UserDateAudit;

public class PostResponse extends UserDateAudit{
    private String title;
    private String body;
    private String category;
    private List<String> tags;
    
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public List<String> getTags() {
		return tags;
	}
	public void setTags(List<String> tags) {
		this.tags = tags;
	}
}
