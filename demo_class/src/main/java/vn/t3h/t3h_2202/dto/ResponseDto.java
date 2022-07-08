package vn.t3h.t3h_2202.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class ResponseDto {
    Integer code;
    String message;

}
