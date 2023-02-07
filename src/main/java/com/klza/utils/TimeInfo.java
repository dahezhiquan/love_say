package com.klza.utils;

import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

/**
 * 关于时间信息获取的工具
 */
@Component
public class TimeInfo {
    // 1970年1月1日到部署此程序时间隔的时间天数 - 1
    // 利用这个值在数据库中动态的更新每天情话的id
    private final int beginDaydiff = 19394;

    /**
     * 获取当前的日期 年-月-日
     *
     * @return 系统当前日期
     */
    public LocalDate getNowTime() {
        return LocalDate.now();
    }

    /**
     * 计算1970年1月1日到现在的天数
     *
     * @return 1970年1月1日到现在的天数
     */
    public long getTimeDiff() {
        Date nowDate = Date.from(getNowTime().atStartOfDay().atZone(ZoneId.systemDefault()).toInstant());
        long temp = nowDate.getTime();
        // 因为当前地区处于东八区，多余8小时，因此需要减去8小时的毫秒数，然后除去一天的毫秒数
        // 因为当前一天减去的数量没有计算前面一天，因此需要在总数上加1
        return (temp - 8 * 60 * 1000) / (24 * 60 * 60 * 1000) + 1;
    }

    /**
     * 今天该选数据库id为几的句子了？
     *
     * @return 选取的数据库id为几的句子
     */
    public long whatId() {
        return getTimeDiff() - beginDaydiff;
    }
}
