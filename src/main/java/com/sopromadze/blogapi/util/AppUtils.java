package com.sopromadze.blogapi.util;

import java.util.ArrayList;
import java.util.List;

import com.sopromadze.blogapi.exception.BadRequestException;
import com.sopromadze.blogapi.model.post.Post;
import com.sopromadze.blogapi.model.tag.Tag;
import com.sopromadze.blogapi.payload.post.PostResponse;

public class AppUtils {
	public static void validatePageNumberAndSize(int page, int size) {
        if(page < 0) {
            throw new BadRequestException("Page number cannot be less than zero.");
        }

        if(size < 0) {
            throw new BadRequestException("Size number cannot be less than zero.");
        }

        if(size > AppConstants.MAX_PAGE_SIZE) {
            throw new BadRequestException("Page size must not be greater than " + AppConstants.MAX_PAGE_SIZE);
        }
    }
	
	public static PostResponse mapPostToPosteResponse(Post post) {
		PostResponse postResponse = new PostResponse();
		
		postResponse.setId(post.getId());
		postResponse.setBody(post.getBody());
		postResponse.setCategory(post.getCategory().getName());
		postResponse.setCreatedAt(post.getCreatedAt());
		postResponse.setCreatedBy(post.getCreatedBy());
		postResponse.setImgUrl(post.getImgUrl());
		
		List<String> tags = new ArrayList<String>();
		
		for(Tag tag : post.getTags()) {
			tags.add(tag.getName());
		}
		
		postResponse.setTags(tags);
		postResponse.setTitle(post.getTitle());
		postResponse.setUpdateBy(post.getUpdatedBy());
		postResponse.setUpdatedAt(post.getUpdatedAt());
		
		return postResponse;
	}
}
