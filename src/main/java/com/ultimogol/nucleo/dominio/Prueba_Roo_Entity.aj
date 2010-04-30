package com.ultimogol.nucleo.dominio;

import com.ultimogol.nucleo.dominio.Prueba;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Prueba_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager Prueba.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Prueba.id;
    
    @Version
    @Column(name = "version")
    private Integer Prueba.version;
    
    public Long Prueba.getId() {
        return this.id;
    }
    
    public void Prueba.setId(Long id) {
        this.id = id;
    }
    
    public Integer Prueba.getVersion() {
        return this.version;
    }
    
    public void Prueba.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void Prueba.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Prueba.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Prueba attached = this.entityManager.find(Prueba.class, this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Prueba.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Prueba.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Prueba merged = this.entityManager.merge(this);
        this.entityManager.flush();
        this.id = merged.getId();
    }
    
    public static final EntityManager Prueba.entityManager() {
        EntityManager em = new Prueba().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Prueba.countPruebas() {
        return (Long) entityManager().createQuery("select count(o) from Prueba o").getSingleResult();
    }
    
    public static List<Prueba> Prueba.findAllPruebas() {
        return entityManager().createQuery("select o from Prueba o").getResultList();
    }
    
    public static Prueba Prueba.findPrueba(Long id) {
        if (id == null) return null;
        return entityManager().find(Prueba.class, id);
    }
    
    public static List<Prueba> Prueba.findPruebaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from Prueba o").setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
