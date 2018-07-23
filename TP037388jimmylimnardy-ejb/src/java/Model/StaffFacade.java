/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Anonymous
 */
@Stateless
public class StaffFacade extends AbstractFacade<Staff> {

    @PersistenceContext(unitName = "TP037388jimmylimnardy-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public StaffFacade() {
        super(Staff.class);
    }
    
}
