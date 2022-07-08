package vn.t3h.t3h_2202.instruction;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class PageDefault {
    @ExceptionHandler(value = AccessDeniedException.class)
    public String Accessisdenied(Exception e) {
        return "403";
    }
}
