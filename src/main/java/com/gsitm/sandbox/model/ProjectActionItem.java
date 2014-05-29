package com.gsitm.sandbox.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import lombok.Data;
import org.joda.time.DateTime;

@Entity
@Data
public class ProjectActionItem implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long sno;
    private String item;
    private String officer;
    private String status;
    private String createdby;
    private DateTime createdDate;
}
