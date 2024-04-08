package com.example.h031502.service;

import com.example.h031502.bean.Post;

import java.util.List;

public interface PostService {
    List<Post> getAllPosts();
    Post getPostById(int id);
    void addPost(Post post);
    void updatePost(Post post);
    void deletePost(int id);
}
