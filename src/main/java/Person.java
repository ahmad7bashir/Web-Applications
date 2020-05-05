import java.sql.Date;

/*
 * Person class
 *
 * @author Xianwen Jin
*/

public class Person {
    
    private final int idUser;
    private final String name;
	private final String surname;
	private final char gender;
	private final java.sql.Date dob;
	private final String email;
	private final String passwd;
	private final String phone;
	private final String description;

	// constructor
	public Person(int idUser, String name, String surname, char gender,
			java.sql.Date dob, String email, String passwd, String phone, String description) {
			
		this.idUser = idUser;		
		this.name = name;
		this.surname = surname;
		this.gender = gender;
		this.dob = dob;
		this.email = email;
		this.passwd = passwd;
		this.phone = phone;
		this.description = description;
		
    }
	
	// get methods
	
    public final int getID() {
        return idUser;
    }
    
    public final String getName() {
        return name;
    }
	
	public final String getSurname() {
        return surname;
    }
	
	public final char getGender() {
        return gender;
    }
	
	public final Date getDob() {
        return dob;
    }
	
	public final String getEmail() {
        return email;
    }
	
	public final String getPassword() {
        return passwd;
    }
	
	public final String getPhone() {
        return phone;
    }

	public final String getDescription() {
        return description;
    }
	
}