package com.gsitm.sandbox.controller;

import com.gsitm.sandbox.model.ProjectActionItem;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

@Controller
public class ProjectActionItemController {

    public HttpEntity<ProjectActionItem> projectActionItem() {

        ProjectActionItem item = new ProjectActionItem();

        return new ResponseEntity<ProjectActionItem>(item, HttpStatus.OK);
    }
}
