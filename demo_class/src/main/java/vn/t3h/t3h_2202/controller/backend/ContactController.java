package vn.t3h.t3h_2202.controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import vn.t3h.t3h_2202.dto.ContactDto;
import vn.t3h.t3h_2202.paging.PagingAndSortObject;
import vn.t3h.t3h_2202.paging.PagingAndSortParam;
import vn.t3h.t3h_2202.service.ContactService;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;

@Controller
@RequestMapping("contact")
public class ContactController {
    @Autowired
    ContactService contactService;
    @GetMapping("create")
    public String create(Model model){
        model.addAttribute("menu", "contact");
        return "contact/create";
    }
    @GetMapping("list")
    public String list(@PagingAndSortParam(path = "contact") PagingAndSortObject pagingAndSortObject) throws SQLException{
        contactService.danhsach(pagingAndSortObject);
        return "contact/list";
    }
    @PostMapping(value = "contact-form",consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String addcontact(ContactDto contactDto, RedirectAttributes redirectAttributes,
                             HttpServletRequest response,HttpServletRequest  requestm) throws SQLException {
        redirectAttributes.addFlashAttribute("message", " cảm ơn bạn đa liên hệ với chúng tôi" );
                contactService.saveContact(contactDto);
               return "redirect:/contact/create";
    }
}
