// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.proof.ldap.service.impl;

import com.disid.proof.ldap.model.LocalGroup;
import com.disid.proof.ldap.repository.LocalGroupRepository;
import com.disid.proof.ldap.service.impl.LocalGroupServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect LocalGroupServiceImpl_Roo_Service_Impl {
    
    declare @type: LocalGroupServiceImpl: @Service;
    
    declare @type: LocalGroupServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private LocalGroupRepository LocalGroupServiceImpl.localGroupRepository;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param localGroupRepository
     */
    @Autowired
    public LocalGroupServiceImpl.new(LocalGroupRepository localGroupRepository) {
        setLocalGroupRepository(localGroupRepository);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return LocalGroupRepository
     */
    public LocalGroupRepository LocalGroupServiceImpl.getLocalGroupRepository() {
        return localGroupRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param localGroupRepository
     */
    public void LocalGroupServiceImpl.setLocalGroupRepository(LocalGroupRepository localGroupRepository) {
        this.localGroupRepository = localGroupRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param localGroup
     */
    @Transactional
    public void LocalGroupServiceImpl.delete(LocalGroup localGroup) {
        getLocalGroupRepository().delete(localGroup);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<LocalGroup> LocalGroupServiceImpl.save(Iterable<LocalGroup> entities) {
        return getLocalGroupRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void LocalGroupServiceImpl.delete(Iterable<Long> ids) {
        List<LocalGroup> toDelete = getLocalGroupRepository().findAll(ids);
        getLocalGroupRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return LocalGroup
     */
    @Transactional
    public LocalGroup LocalGroupServiceImpl.save(LocalGroup entity) {
        return getLocalGroupRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return LocalGroup
     */
    public LocalGroup LocalGroupServiceImpl.findOne(Long id) {
        return getLocalGroupRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return LocalGroup
     */
    public LocalGroup LocalGroupServiceImpl.findOneForUpdate(Long id) {
        return getLocalGroupRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<LocalGroup> LocalGroupServiceImpl.findAll(Iterable<Long> ids) {
        return getLocalGroupRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<LocalGroup> LocalGroupServiceImpl.findAll() {
        return getLocalGroupRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long LocalGroupServiceImpl.count() {
        return getLocalGroupRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<LocalGroup> LocalGroupServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getLocalGroupRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<LocalGroup> LocalGroupServiceImpl.getEntityType() {
        return LocalGroup.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> LocalGroupServiceImpl.getIdType() {
        return Long.class;
    }
    
}
