package vn.t3h.t3h_2202.controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import vn.t3h.t3h_2202.dto.ProductDto;
import vn.t3h.t3h_2202.dto.UserDto;
import vn.t3h.t3h_2202.entity.ProductEntity;
import vn.t3h.t3h_2202.paging.PagingAndSortObject;
import vn.t3h.t3h_2202.paging.PagingAndSortParam;
import vn.t3h.t3h_2202.service.ProductService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("backend/product")
public class BackendProductController {
    @Autowired
    ProductService productService;
    public static String UPLOADED_FOLDER = "D:\\eshop\\";
    @PreAuthorize("hasRole('ADMIN')")
    @RequestMapping("create")
    public String create() {
        return "backend/product/create";
    }
    @PreAuthorize("hasRole('ADMIN')")
    @RequestMapping({"create2"})
    public String create2(Model model) {
        return "backend/product/create2";
    }
    @PreAuthorize("hasRole('ADMIN')")
    @PostMapping(value = "create-form", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String createProductForm(ProductDto productDto, RedirectAttributes redirectAttributes,
                                    HttpServletResponse response, HttpServletRequest request) throws SQLException {
        productService.saveProduct(productDto);
//        request.setAttribute();
        redirectAttributes.addFlashAttribute("message", "Thêm sản phẩm  " + productDto.getName() + " thành công!");
//        response.sendRedirect("/backend/user/create");
        return "redirect:/backend/product/create2";
    }

    @PreAuthorize("hasRole('ADMIN')")
    @GetMapping("list")
    public String loadPageList(@PagingAndSortParam(path = "product") PagingAndSortObject pagingAndSortObject) throws SQLException {
        productService.danhsach(pagingAndSortObject);
        return "backend/product/list";
    }
    @RequestMapping("list2")
    public String viewHomePage(Model model, @RequestParam("keyword") String keyword) {
        List<ProductEntity> listProducts = productService.listAll(keyword);
        model.addAttribute("listProduct", listProducts);
        model.addAttribute("keyword", keyword);
        return "backend/product/list2";
    }
    @GetMapping("edit/{id}")
    public String loadPageEditP(Model model, @PathVariable Long id) {
        model.addAttribute("product", productService.detail(id));
        return "backend/product/edit";
    }

    @PostMapping(value = "edit-form", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String editProductForm(ProductDto productDto, RedirectAttributes redirectAttributes,
                                  HttpServletResponse response, HttpServletRequest request) throws SQLException {
        productService.editProduct(productDto);
//        request.setAttribute();
        redirectAttributes.addFlashAttribute("message", "Cập nhật sản phẩm " + productDto.getName() + " thành công!");
//        response.sendRedirect("/backend/user/create");
        return "redirect:/backend/product/create2";
    }
    @RequestMapping(value = "/delete")
    public String deleteUser(@RequestParam Long Id, Model model) throws SQLException {
        productService.deleteById(Id);
        return "redirect:/backend/product/list";
    }
    @PostMapping("/upload")
    @ResponseBody
    public String uploadFile(
            @RequestParam("file") MultipartFile uploadfile) {
        if (uploadfile.isEmpty()) {
            return null;
        }
        try {
            saveUploadedFiles(Arrays.asList(uploadfile));
        } catch (IOException e) {
            return null;
        }
        return uploadfile.getOriginalFilename();
    }
    //save file
    private void saveUploadedFiles(List<MultipartFile> files) throws IOException {

        for (MultipartFile file : files) {

            if (file.isEmpty()) {
                continue; //next pls
            }
            byte[] bytes = file.getBytes();
            Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
            Files.write(path, bytes);
        }
    }
}
