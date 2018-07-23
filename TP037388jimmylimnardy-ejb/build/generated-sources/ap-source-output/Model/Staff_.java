package Model;

import Model.Port;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-07-22T00:18:31")
@StaticMetamodel(Staff.class)
public class Staff_ { 

    public static volatile SingularAttribute<Staff, String> password;
    public static volatile SingularAttribute<Staff, String> name;
    public static volatile SingularAttribute<Staff, Integer> id;
    public static volatile SingularAttribute<Staff, Port> portID;
    public static volatile SingularAttribute<Staff, String> email;

}