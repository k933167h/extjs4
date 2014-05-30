package com.gsitm.sandbox.extjs.core.repository;

import com.gsitm.sandbox.extjs.core.model.ProjectActionItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "projectactionitems")
public interface ProjectActionItemRepository extends JpaRepository<ProjectActionItem, Long> {

}
