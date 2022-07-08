package vn.t3h.t3h_2202.dto;

import lombok.Data;

import java.util.List;

@Data
public class  ResponseListDto<T> {
    Integer page;
    Integer perpage;
    List<T> data;
    long total;
    long numberPage;
    int begin;

}
