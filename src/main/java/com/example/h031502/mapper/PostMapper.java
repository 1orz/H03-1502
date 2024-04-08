package com.example.h031502.mapper;

import com.example.h031502.bean.Post;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface PostMapper {

    @Select("SELECT * FROM post")
    List<Post> getAllPosts();

    @Select("SELECT * FROM post WHERE id = #{id}")
    Post getPostById(int id);

    @Insert("INSERT INTO post (post_name, post_type, organization_size) VALUES (#{postName}, #{postType}, #{organizationSize})")
    void addPost(Post post);

    @Update("UPDATE post SET post_name = #{postName}, post_type = #{postType}, organization_size = #{organizationSize} WHERE id = #{id}")
    void updatePost(Post post);

    @Delete("DELETE FROM post WHERE id = #{id}")
    void deletePost(int id);
}
