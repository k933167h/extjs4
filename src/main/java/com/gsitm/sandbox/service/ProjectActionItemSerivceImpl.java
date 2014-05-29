package com.gsitm.sandbox.service;

import com.gsitm.sandbox.repository.ProjectActionItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ProjectActionItemSerivceImpl implements ProjectActionItemService {

    @Autowired
    private ProjectActionItemRepository repository;
}
