package vn.t3h.t3h_2202.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.t3h.t3h_2202.entity.ContactEntity;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ContactDto {
    Long id;
    String name;
    String email;
    String phone;
    String message;

    public ContactEntity conVertEntity() {
        ContactEntity contactEntity = new ContactEntity();
        contactEntity.setId(id);
        contactEntity.setName(name);
        contactEntity.setPhone(phone);
        contactEntity.setEmail(email);
        contactEntity.setMessage(message);
        return contactEntity;
    }
}
