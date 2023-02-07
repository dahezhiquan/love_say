package com.klza.mapper;

import com.klza.pojo.EmailContent;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface SayMapper {
    // 通过ID查找情话
    EmailContent querySayById(int id);

    // 查找记录数
    int queryCount();
}
