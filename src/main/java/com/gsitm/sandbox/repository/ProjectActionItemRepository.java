package com.gsitm.sandbox.repository;

import com.gsitm.sandbox.model.ProjectActionItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProjectActionItemRepository extends JpaRepository<ProjectActionItem, Long> {

}
