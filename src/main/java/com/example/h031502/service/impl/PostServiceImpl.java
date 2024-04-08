package com.example.h031502.service.impl;

import com.example.h031502.bean.Post;
import com.example.h031502.mapper.PostMapper;
import com.example.h031502.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PostServiceImpl implements PostService {

    @Autowired
    private PostMapper postMapper;

    @Override
    public List<Post> getAllPosts() {
        return postMapper.getAllPosts();
    }

    @Override
    public Post getPostById(int id) {
        return postMapper.getPostById(id);
    }

    @Override
    public void addPost(Post post) {
        postMapper.addPost(post);
    }

    @Override
    public void updatePost(Post post) {
        postMapper.updatePost(post);
    }

    @Override
    public void deletePost(int id) {
        postMapper.deletePost(id);
    }
}
