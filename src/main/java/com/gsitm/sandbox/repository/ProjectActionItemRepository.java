package com.gsitm.sandbox.repository;

import com.gsitm.sandbox.model.ProjectActionItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "projectactionitem", path = "projectactionitem")
public interface ProjectActionItemRepository extends JpaRepository<ProjectActionItem, Long> {

}
