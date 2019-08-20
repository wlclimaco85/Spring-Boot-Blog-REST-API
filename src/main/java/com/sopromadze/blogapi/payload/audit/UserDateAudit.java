package com.sopromadze.blogapi.payload.audit;

public abstract class UserDateAudit extends DateAudit{
	private Long createdBy;
	private Long updateBy;
	public Long getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(Long createdBy) {
		this.createdBy = createdBy;
	}
	public Long getUpdateBy() {
		return updateBy;
	}
	public void setUpdateBy(Long updateBy) {
		this.updateBy = updateBy;
	}
}
