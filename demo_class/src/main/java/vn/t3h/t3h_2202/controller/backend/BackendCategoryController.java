package vn.t3h.t3h_2202.controller.backend;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import vn.t3h.t3h_2202.dto.CategoryDto;
import vn.t3h.t3h_2202.paging.PagingAndSortObject;
import vn.t3h.t3h_2202.paging.PagingAndSortParam;
import vn.t3h.t3h_2202.service.CategoryService;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.sql.SQLException;

@Controller
@RequestMapping("backend/category")
public class BackendCategoryController {
   @Autowired
   CategoryService categoryService;

    @RequestMapping("create")
    public String create(Model model) {
        model.addAttribute("category", new CategoryDto());
        return "backend/category/create";
    }

    @PostMapping(value = "create-form", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String createUserForm(/*@ModelAttribute(name = "category")*/ @Valid CategoryDto category, BindingResult bindingResult,
                                                                        RedirectAttributes redirectAttributes, Model model,
                                                                        HttpServletResponse response, HttpServletRequest request) throws SQLException {
        // @TODO Lưu productDto vào database
        if (bindingResult.hasErrors()) {
            model.addAttribute("category", category);
            return "backend/category/create";
        }
        return "redirect:/backend/category/create";
    }

    @GetMapping("list")
    public String loadPageList(@PagingAndSortParam(path = "category") PagingAndSortObject pagingAndSortObject) throws SQLException {

        categoryService.danhsach1(pagingAndSortObject);
//        String key = request.getParameter("key");
        return "backend/category/list";
    }
}
