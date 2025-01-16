package org.carcraft.backend.repository;

import org.carcraft.backend.entity.FormData;


import org.springframework.data.jpa.repository.JpaRepository;

public interface FormDataRepository extends JpaRepository<FormData, Long> {
}
