// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.proof.ldap.repository;

import com.disid.proof.ldap.model.LocalGroup;
import com.disid.proof.ldap.model.QLocalGroup;
import com.disid.proof.ldap.repository.LocalGroupRepositoryCustom;
import com.disid.proof.ldap.repository.LocalGroupRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect LocalGroupRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: LocalGroupRepositoryImpl implements LocalGroupRepositoryCustom;
    
    declare @type: LocalGroupRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LocalGroupRepositoryImpl.NAME = "name";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<LocalGroup> LocalGroupRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QLocalGroup localGroup = QLocalGroup.localGroup;
        
        JPQLQuery<LocalGroup> query = from(localGroup);
        
        Path<?>[] paths = new Path<?>[] {localGroup.name};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NAME, localGroup.name);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, localGroup);
    }
    
}