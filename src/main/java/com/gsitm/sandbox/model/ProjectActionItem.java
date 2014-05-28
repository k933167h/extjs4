package com.gsitm.sandbox.model;

import lombok.Data;
import org.joda.time.LocalDate;

@Data
public class ProjectActionItem {
    
    private Long sno;
    private String item;
    private String officer;
    private String status;
    private String createdby;
    private LocalDate createddate;
}
