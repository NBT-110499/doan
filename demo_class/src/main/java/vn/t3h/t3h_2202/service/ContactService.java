package vn.t3h.t3h_2202.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.t3h.t3h_2202.dto.ContactDto;
import vn.t3h.t3h_2202.entity.ContactEntity;
import vn.t3h.t3h_2202.paging.PagingAndSortObject;
import vn.t3h.t3h_2202.repository.ContactRepository;

import java.sql.SQLException;

@Service
public class ContactService {
    @Autowired
    ContactRepository contactRepository;
    public ContactDto saveContact(ContactDto contactDto){
        ContactEntity contactEntity = contactDto.conVertEntity();
        contactRepository.save(contactEntity);
        return contactDto;
    }
    public void danhsach(PagingAndSortObject pagin1gAndSortObject) throws SQLException {
        pagin1gAndSortObject.findAll(contactRepository);
    }
}
