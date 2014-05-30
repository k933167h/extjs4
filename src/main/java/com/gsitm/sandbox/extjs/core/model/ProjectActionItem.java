package com.gsitm.sandbox.extjs.core.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import lombok.Data;
import org.joda.time.LocalDate;

@Entity
@Data
public class ProjectActionItem implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long sno;
    @Column(length = 50)
    private String item;
    @Column(length = 50)
    private String officer;
    @Column(length = 50)    
    private String status;
    @Column(length = 50)    
    private String createdBy;
    private LocalDate createdDate;
}
