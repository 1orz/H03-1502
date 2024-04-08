package com.example.h031502.controller;

import com.example.h031502.bean.Post;
import com.example.h031502.service.PostService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/posts")
public class PostController {

    @Autowired
    private PostService postService;

    @GetMapping("/")
    public List<Post> getAllPosts() {
        return postService.getAllPosts();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Object> getPostById(@PathVariable int id) {
        Post post = postService.getPostById(id);
        if (post != null) {
            return ResponseEntity.ok(post);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body("{\"code\": 1, \"msg\": \"No such id: " + id + "\"}");
        }
    }

    @PostMapping("/")
    public ResponseEntity<String> addPost(@RequestBody Post post) {
        postService.addPost(post);
        return ResponseEntity.status(HttpStatus.CREATED)
                .body("{\"code\": 0, \"msg\": \" 1 line has been added.\"}");
    }

    @PutMapping("/{id}")
    public ResponseEntity<String> updatePost(@PathVariable int id, @RequestBody Post post) {
        if (postService.getPostById(id) != null) {
            post.setId(id);
            postService.updatePost(post);
            return ResponseEntity.status(HttpStatus.OK)
                    .body("{\"code\": 0, \"msg\": \"" + id + " has been updated.\"}");
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body("{\"code\": 1, \"msg\": \"No such id: " + id + "\"}");
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deletePost(@PathVariable int id) {
        if (postService.getPostById(id) != null) {
            postService.deletePost(id);
            return ResponseEntity.status(HttpStatus.OK)
                    .body("{\"code\": 0, \"msg\": \"" + id + " has been deleted.\"}");
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body("{\"code\": 1, \"msg\": \"No such id: " + id + "\"}");
        }
    }

    @GetMapping("/getPostByPage")
    public Map<String, Object> getPostByPage(@RequestParam Integer currentPage, @RequestParam Integer pageSize) {
        PageHelper.startPage(currentPage, pageSize);
        List<Post> posts = postService.getAllPosts();
        PageInfo<Post> pageInfo = new PageInfo<>(posts);
        Map<String, Object> result = new HashMap<>();
        result.put("total", pageInfo.getTotal());
        result.put("posts", posts);

        return result;
    }
}
