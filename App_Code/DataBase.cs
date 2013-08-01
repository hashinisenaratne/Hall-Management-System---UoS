using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;

public class DataBase
{
    MySqlConnection connection;
    MySqlCommand command;
    MySqlDataReader reader; 

	public DataBase()
	{
		
	}

    private void connect()
    {
        String connectionString = "SERVER=localhost;DATABASE=hmsus;UID=root;PASSWORD=;";
        connection = new MySqlConnection(connectionString);
        command = connection.CreateCommand();

        if (connection.State != ConnectionState.Open)
        {
            try
            {
                connection.Open();
            }
            catch (MySqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }

    private void disconnect()
    {
        if (connection.State == ConnectionState.Open)
        {
            try
            {
                connection.Close();
            }
            catch (MySqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }

    public String[] getPw(String id)
    {
        String[] pw = new String[2];
        
        connect();

        command.CommandText = "select password,type from login where id = @id";
        command.Prepare();
        command.Parameters.AddWithValue("@id", id);
        reader = command.ExecuteReader();
        reader.Read();
        if (!reader.HasRows)
        {
            return pw;
        }
        
        pw[0] = reader.GetString(0);    //password
        pw[1] = reader.GetString(1);    //type
        reader.Close();

        disconnect();
        return pw;
    }

    public String[] getDetails(String id)
    {
        connect();

        String[] ret = new String[11];

        command.CommandText = "select * from student where student_number = @number";
        command.Prepare();
        command.Parameters.AddWithValue("@number", id);
        reader = command.ExecuteReader();
        
        if (reader.Read())
        {
            ret[0] = reader.GetString(0);   //id            
            if (!reader.IsDBNull(1))
            {
                Byte[] imagearray = (Byte[])reader.GetValue(1);
                ret[1] = Convert.ToBase64String(imagearray, 0, imagearray.Length);//image
            }
            ret[2] = reader.GetString(2);   //first name
            ret[3] = reader.GetString(3);   //last name
            ret[4] = reader.GetString(4);   //gender
            ret[5] = reader.GetString(5);   //street
            ret[6] = reader.GetString(6);   //town
            ret[7] = reader.GetString(7);   //admission year
            ret[8] = reader.GetString(8);   //department            
            ret[9] = reader.GetString(9);   //balance   
            ret[10] = "";                   //phone
        }
        
        reader.Close();

        command.CommandText = "select phone_number from student_phone_number where student_number = @number";
        command.Prepare();        
        reader = command.ExecuteReader();

        bool hasMore = reader.Read();
        
        while (hasMore)
        {
            ret[10] = ret[10] + reader.GetString(0);
            hasMore = reader.Read();

            if (hasMore)
                ret[10] = ret[10] + ", ";            
        }

        disconnect();       

        return ret;
    }

    public String[] getRoom(String id)
    {
        connect();

        String[] ret = new String[7];

        command.CommandText = "select * from accommodate natural join room where student_number = @id";
        command.Prepare();
        command.Parameters.AddWithValue("@id", id);
        reader = command.ExecuteReader();
        
        if (reader.Read())
        {
            ret[0] = reader.GetString(0);   //hall name
            ret[1] = reader.GetString(1);   //room number   
            ret[2] = reader.GetString(3);   //assign date
            ret[3] = reader.GetString(4);   //type
            ret[4] = reader.GetString(5);   //cost
            //ret[5] = reader.GetString(7); //room mate name
            //ret[6] = reader.GetString(6); //room mate id
        }

        reader.Close();

        command.CommandText = "select student_number,CONCAT(first_name,' ',last_name) as name from accommodate natural join student where room_number= @room and hall_name= @hall";
        command.Prepare();
        command.Parameters.AddWithValue("@room", ret[1]);
        command.Parameters.AddWithValue("@hall", ret[0]);
        reader = command.ExecuteReader();

        bool hasMore = reader.Read();

        while (hasMore)
        {
            String newId = reader.GetString(0);
            if(newId != id)
            {
                ret[5] = reader.GetString(1);
                ret[6] = newId;
            }
            hasMore = reader.Read();            
        }
        reader.Close();
        disconnect();
        return ret;
    }

    public String[] getHall(String id)
    {
        connect();

        String[] ret = new String[3];

        command.CommandText = "select * from accommodate natural join hall where student_number = @id";
        command.Prepare();
        command.Parameters.AddWithValue("@id", id);
        reader = command.ExecuteReader();

        if (reader.Read())
        {
            ret[0] = reader.GetString(1);   //hall name
            ret[1] = reader.GetString(5);   //capacity
            ret[2] = reader.GetString(6);   //type            
        }

        reader.Close();
        disconnect();
        return ret;
    }
    
    public void addPayment(String payId, String stdId, String date, String amount)
    {
        connect();

        command.CommandText = "insert into payments values(@sid, @pid, @date, @amount)";
        command.Prepare();
        command.Parameters.AddWithValue("@pid", payId);
        command.Parameters.AddWithValue("@sid", stdId);
        command.Parameters.AddWithValue("@date", date);
        command.Parameters.AddWithValue("@amount", amount);
        command.ExecuteNonQuery();

        disconnect();
    }

    public bool hasPayment(String id)
    {
        bool ret = false;
        
        connect();

        command.CommandText = "select payment_id from payments where payment_id = @id";
        command.Prepare();
        command.Parameters.AddWithValue("@id", id);
        reader = command.ExecuteReader();
        reader.Read();
                
        if (reader.HasRows)
        {
            ret = true;
        }  

        reader.Close();
        disconnect();             

        return ret;
    }

    public String[] getEmployeeDetails(String id)
    {
        connect();

        String[] ret = new String[10];

        command.CommandText = "select * from employee where employee_id = @id";
        command.Prepare();
        command.Parameters.AddWithValue("@id", id);
        reader = command.ExecuteReader();


        if (reader.Read())
        {
            ret[0] = reader.GetString(0);//id
            ret[1] = reader.GetString(1);//name
            ret[2] = reader.GetString(2);//gender
            if (!reader.IsDBNull(3))
            {
                Byte[] imagearray = (Byte[])reader.GetValue(3);
                ret[3] = Convert.ToBase64String(imagearray, 0, imagearray.Length);//image
            }
            ret[4] = reader.GetString(4);//adress street
            ret[5] = reader.GetString(5);//address town
            ret[6] = reader.GetString(6);//salary
            ret[7] = reader.GetString(7);//position
        }

        reader.Close();
        command.CommandText = "select hall_name from works where employee_id = @id";
        command.Prepare();
        reader = command.ExecuteReader();

        if (reader.Read())
        {
            reader.Read();
            ret[8] = reader.GetString(0);
        }

        reader.Close();

        command.CommandText = "select phone_number from employee_phone_number where employee_id = @id";
        command.Prepare();

        reader = command.ExecuteReader();

        bool hasMore = reader.Read();
        ret[9] = "";

        while (hasMore)
        {
            ret[9] = ret[9] + reader.GetString(0);
            hasMore = reader.Read();
            if (hasMore)
                ret[9] = ret[9] + ", ";
        }

        reader.Close();

        disconnect();

        return ret;
    }

    public String[] getEmployeeHallDetails(String hallname)
    {
        connect();

        String[] ret = new String[3];

        command.CommandText = "select * from hall where name = @hall";
        command.Prepare();
        command.Parameters.AddWithValue("@hall", hallname);

        reader = command.ExecuteReader();


        if (reader.Read())
        {
            ret[0] = reader.GetString(0);//hallname
            ret[1] = reader.GetString(1);//capacity
            ret[2] = reader.GetString(2);//type  
        }

        reader.Close();

        disconnect();

        return ret;
    }

    public bool hasEmployeeHistory(String id)
    {
        connect();

        String[] ret = new String[3];

        command.CommandText = "SELECT count(1) FROM work_history WHERE employee_id = @eid";
        command.Prepare();
        command.Parameters.AddWithValue("@eid", id);

        if (Convert.ToInt32(command.ExecuteScalar()) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
    
    public String[][] getStudentInfo(String id, String firstName, String lastName, String department)
    {
        connect();
        Boolean hasOne = false;// to flag that one field is added to the sql query
        LinkedList<String[]> list = new LinkedList<String[]>();

        MySqlCommand cmd = new MySqlCommand();
        cmd.Connection = connection;
        if (!"".Equals(id))
        {
            cmd.CommandText = "select student_number, first_name, last_name from student where student_number = @id";
            hasOne = true;
        }
        else
        {
            if (!"".Equals(firstName))
            {
                if (hasOne)
                {
                    cmd.CommandText += " and first_name LIKE @firstName";
                }
                else
                {
                    cmd.CommandText = "select student_number, first_name, last_name from student where first_name LIKE @firstName";
                }
                hasOne = true;
            }
            if (!"".Equals(lastName))
            {
                if (hasOne)
                {
                    cmd.CommandText += " and last_name LIKE @lastName";
                }
                else
                {
                    cmd.CommandText = "select student_number, first_name, last_name from student where last_name LIKE @lastName";
                }
                hasOne = true;
            }
            if (!"".Equals(department))
            {
                if (hasOne)
                {
                    cmd.CommandText += " and department LIKE @department";
                }
                else
                {
                    cmd.CommandText = "select student_number, first_name, last_name from student where department LIKE @department";
                }
                hasOne = true;
            }

        }

        cmd.Prepare();

        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@firstName", "%" + firstName + "%");
        cmd.Parameters.AddWithValue("@lastName", "%" + lastName + "%");
        cmd.Parameters.AddWithValue("@department", "%" + department + "%");
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            list.AddLast(new String[] { reader.GetString(0), reader.GetString(1) + " " + reader.GetString(2) });
        }

        disconnect();

        return list.ToArray();
    }

    public String[] getStudentInfoComplete(String id, ref Byte[] image)
    {
        connect();

        String[] ret = new String[9];
        command.CommandText = "select student_number, image, first_name, last_name, address_street, address_town, admission_year, department, balance_payment from student where student_number =@id";
        command.Prepare();
        command.Parameters.AddWithValue("@id", id);
        reader = command.ExecuteReader();


        if (reader.Read())
        {
            ret[0] = reader.GetString(0);
            if (!reader.IsDBNull(1))
            {
                image = (Byte[])reader.GetValue(1);
            }
            ret[1] = reader.GetString(2) + " " + reader.GetString(3);
            ret[2] = reader.GetString(4) + ", " + reader.GetString(5);
            ret[3] = reader.GetString(7);
            ret[4] = reader.GetString(6);
            ret[6] = reader.GetString(8);
            //phnLabel.Text = reader.GetString(3);    
        }

        reader.Close();

        command.CommandText = "select phone_number from student_phone_number where student_number =@id";
        command.Prepare();
        reader = command.ExecuteReader();

        bool hasMore = reader.Read();

        while (hasMore)
        {
            ret[5] = ret[5] + reader.GetString(0);
            hasMore = reader.Read();

            if (hasMore)
                ret[5] = ret[5] + ", ";

        }
        reader.Close();

        command.CommandText = "select hall_name, room_number from accommodate where student_number =@id";
        command.Prepare();
        reader = command.ExecuteReader();

        if (reader.Read())
        {
            ret[7] = reader.GetString(0);
            ret[8] = reader.GetString(1);
        }

        disconnect();

        return ret;
    }

    public String[][] getEmployeeInfo(String id, String name, String hall)
    {
        connect();
        Boolean hasOne = false;// to flag that one field is added to the sql query
        LinkedList<String[]> list = new LinkedList<String[]>();

        MySqlCommand cmd = new MySqlCommand();
        cmd.Connection = connection;
        if (!"".Equals(id))
        {
            cmd.CommandText = "select employee_id, name from employee where employee_id = @id";
            hasOne = true;
        }
        else
        {
            if (!"".Equals(name))
            {
                if (hasOne)
                {
                    cmd.CommandText += " and name LIKE @name";
                }
                else
                {
                    cmd.CommandText = "select employee_id, name from employee where name LIKE @name";
                }
                hasOne = true;
            }
            if (!"".Equals(hall))
            {
                if (hasOne)
                {
                    cmd.CommandText += " and employee_id in (select employee_id from works where  hall_name LIKE @hall)";
                }
                else
                {
                    cmd.CommandText = "select employee_id, name from employee where employee_id in (select employee_id from works where  hall_name LIKE @hall)";
                }
                hasOne = true;
            }

        }

        cmd.Prepare();

        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@name", "%" + name + "%");
        cmd.Parameters.AddWithValue("@hall", "%" + hall + "%");
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            list.AddLast(new String[] { reader.GetString(0), reader.GetString(1) });
        }

        disconnect();

        return list.ToArray();
    }

    public String[] getEmployeeInfoComplete(String id, ref Byte[] image)
    {
        connect();

        String[] ret = new String[7];
        command.CommandText = "select employee_id, name, image, address_street, address_town, salary, position from employee where employee_id =@id";
        command.Prepare();
        command.Parameters.AddWithValue("@id", id);
        reader = command.ExecuteReader();


        if (reader.Read())
        {
            ret[0] = reader.GetString(0);//id
            ret[1] = reader.GetString(1);//name
            if (!reader.IsDBNull(2))
            {
                image = (Byte[])reader.GetValue(2);
            }
            ret[2] = reader.GetString(3) + ", " + reader.GetString(4);//address
            ret[3] = reader.GetString(5);//salary
            ret[4] = reader.GetString(6);//position
        }

        reader.Close();

        command.CommandText = "select phone_number from employee_phone_number where employee_id =@id";
        command.Prepare();
        reader = command.ExecuteReader();

        bool hasMore = reader.Read();

        while (hasMore)
        {
            ret[5] = ret[5] + reader.GetString(0);
            hasMore = reader.Read();

            if (hasMore)
                ret[5] = ret[5] + ", ";//telephone

        }
        reader.Close();

        command.CommandText = "select hall_name from works where employee_id =@id";
        command.Prepare();
        reader = command.ExecuteReader();

        if (reader.Read())
        {
            ret[6] = reader.GetString(0);//hall name
        }

        disconnect();

        return ret;
    }

    public String[] getHallNames()
    {
        connect();
        LinkedList<String> list = new LinkedList<String>();

        command.CommandText = "select name from hall";
        reader = command.ExecuteReader();
        while (reader.Read())
        {
            list.AddLast(reader.GetString(0));
        }

        disconnect();

        return list.ToArray();
    }

    public String[] getHallDetails(String name)
    {
        connect();
        String[] ret = new String[4];

        command.CommandText = "select name, capacity, type from hall where name=@name";
        command.Prepare();
        command.Parameters.AddWithValue("@name", name);
        reader = command.ExecuteReader();

        if (reader.Read())
        {
            ret[0] = reader.GetString(0);
            ret[1] = reader.GetString(1);
            ret[2] = reader.GetString(2);
        }
        reader.Close();
        command.CommandText = "select count(*) from accommodate where hall_name=@name";
        command.Prepare();
        reader = command.ExecuteReader();

        if (reader.Read())
        {
            ret[3] = reader.GetString(0);
        }
        else
        {
            ret[3] = "0";
        }
        disconnect();

        return ret;
    }

    public String[] getRooms(String hall)
    {
        connect();
        LinkedList<String> list = new LinkedList<String>();

        command.CommandText = "select room_number from room where hall_name=@hall";
        command.Prepare();
        command.Parameters.AddWithValue("@hall", hall);
        reader = command.ExecuteReader();
        while (reader.Read())
        {
            list.AddLast(reader.GetString(0));
        }

        disconnect();

        return list.ToArray();
    }

    public String[] getRoomDetails(String hall, String room)
    {
        connect();
        String[] ret = new String[4];

        command.CommandText = "select room_number, type, cost from room where hall_name=@hall and room_number=@room";
        command.Prepare();
        command.Parameters.AddWithValue("@hall", hall);
        command.Parameters.AddWithValue("@room", room);
        reader = command.ExecuteReader();

        if (reader.Read())
        {
            ret[0] = reader.GetString(0);
            ret[1] = reader.GetString(1);
            ret[2] = reader.GetString(2);
        }
        reader.Close();
        command.CommandText = "select count(*) from accommodate where (hall_name, room_number)=(@hall, @room)";
        command.Prepare();
        reader = command.ExecuteReader();

        if (reader.Read())
        {
            ret[3] = reader.GetString(0);
        }
        else
        {
            ret[3] = "0";
        }
        disconnect();

        return ret;
    }

    public Boolean hasUser(String username)
    {
        connect();
        command.CommandText = "select count(1) from login where id=@username";
        command.Prepare();
        command.Parameters.AddWithValue("@username", username);
        reader = command.ExecuteReader();
        if (reader.Read())
        {
            if (reader.GetString(0) == "1")
            {
                disconnect();
                return true;
            }
        }

        disconnect();
        return false;
    }

    public void addUser(String username, String password, String type)
    {
        connect();
        command.CommandText = "insert into login(id, password, type) values(@username, @password, @type)";
        command.Prepare();
        command.Parameters.AddWithValue("@username", username);
        command.Parameters.AddWithValue("@password", password);
        command.Parameters.AddWithValue("@type", type);
        command.ExecuteNonQuery();
        disconnect();
    }

    public void insertEmp(String id, String name, String gender, Byte[] image, String street, String town, double salary, String position)
    {
        connect();

        command.CommandText = "INSERT INTO employee VALUES (@EmpId,@name,@gender,@image,@street,@town,@salary,@position);";
        command.Prepare();
        command.Parameters.AddWithValue("@EmpId", id);
        command.Parameters.AddWithValue("@name", name);
        command.Parameters.AddWithValue("@gender", gender);
        command.Parameters.AddWithValue("@image", image);
        command.Parameters.AddWithValue("@street", street);
        command.Parameters.AddWithValue("@town", town);
        command.Parameters.AddWithValue("@salary", salary);
        command.Parameters.AddWithValue("@position", position);
        command.ExecuteNonQuery();

        disconnect();
    }

    public void insertStudentPhoneNos(String id, String phoneNo)
    {
        connect();

        String[] phone = phoneNo.Split(' ', ',');

        for (int i = 0; i < phone.Length; i++)
        {
            command = connection.CreateCommand();
            command.CommandText = "Insert INTO student_phone_number VALUES(@id,@stdphone)";
            command.Prepare();
            command.Parameters.AddWithValue("@stdphone", phone[i]);
            command.Parameters.AddWithValue("@id", id);
            command.ExecuteNonQuery();

        }

        disconnect();
    }

    public void insertEmployeePhoneNos(String id, String phoneNo)
    {
        connect();

        //command.CommandText = "INSERT INTO employee_phone_number VALUES (@empId,@phoneNo);";
        //command.Prepare();
        //command.Parameters.AddWithValue("@empId", id);
        //command.Parameters.AddWithValue("@phoneNo", phoneNo);
        //command.ExecuteReader();

        String[] phone = phoneNo.Split(' ', ',');

        for (int i = 0; i < phone.Length; i++)
        {
            command = connection.CreateCommand();
            command.CommandText = "Insert INTO employee_phone_number VALUES(@id,@empphone)";
            command.Prepare();
            command.Parameters.AddWithValue("@empphone", phone[i]);
            command.Parameters.AddWithValue("@id", id);
            command.ExecuteNonQuery();

        }

        disconnect();
    }

    public void updateStudent(String stdNum, Byte[] image, String fName, String lName, String gender, String street, String town, int year, String dept, Boolean imageUploaded)
    {
        connect();

        command.CommandText = "UPDATE student SET first_name=@fName,last_name=@lName, gender=@gender,address_street=@street,address_town=@town,admission_year=@year,department=@dept WHERE student_number=@stdNum";
        command.Prepare();
        command.Parameters.AddWithValue("@stdNum", stdNum);
        command.Parameters.AddWithValue("@image", image);
        command.Parameters.AddWithValue("@fName", fName);
        command.Parameters.AddWithValue("@lName", lName);
        command.Parameters.AddWithValue("@gender", gender);
        command.Parameters.AddWithValue("@street", street);
        command.Parameters.AddWithValue("@town", town);
        command.Parameters.AddWithValue("@year", year);
        command.Parameters.AddWithValue("@dept", dept);
        command.ExecuteNonQuery();

        if (imageUploaded)
        {

            command.CommandText = "UPDATE student SET image=@image WHERE student_number=@stdNum";
            command.ExecuteNonQuery();
        }
        disconnect();

    }

    public void updateEmployeeDetails(String empId, String name, String gender, Byte[] image, String street, String town, double salary, String position, Boolean imageuploaded)
    {
        connect();

        // command.CommandText = "UPDATE employee SET name=@name,gender=@gender,image=@image,address_street=@street,address_town=@town,salary=@salary,position=@position WHERE employee_id=@empId";
        command.CommandText = "UPDATE employee SET name=@name,gender=@gender,address_street=@street,address_town=@town,salary=@salary,position=@position WHERE employee_id=@empId";

        command.Prepare();
        command.Parameters.AddWithValue("@empId", empId);
        command.Parameters.AddWithValue("@name", name);
        command.Parameters.AddWithValue("@gender", gender);
        command.Parameters.AddWithValue("@image", image);

        command.Parameters.AddWithValue("@street", street);
        command.Parameters.AddWithValue("@town", town);
        command.Parameters.AddWithValue("@salary", salary);
        command.Parameters.AddWithValue("@position", position);
        command.ExecuteNonQuery();

        if (imageuploaded)
        {

            command.CommandText = "UPDATE employee SET image=@image WHERE employee_id=@empId";
            command.ExecuteNonQuery();
        }

        disconnect();

    }

    public void updateStudentPhoneNos(String stdNum, String phoneNos)
    {
        connect();

        command.CommandText = "Delete From student_phone_number where student_number=@id";
        command.Prepare();
        command.Parameters.AddWithValue("@id", stdNum);
        command.ExecuteNonQuery();

        String[] phoneNo = phoneNos.Split(' ', ',');

        for (int i = 0; i < phoneNo.Length; i++)
        {
            command = connection.CreateCommand();
            command.CommandText = "Insert INTO student_phone_number VALUES(@id,@stdphone)";
            command.Prepare();
            command.Parameters.AddWithValue("@stdphone", phoneNo[i]);
            command.Parameters.AddWithValue("@id", stdNum);
            command.ExecuteNonQuery();
        }
        disconnect();

    }

    public void updateEmployeePhoneNos(String empNum, String phoneNos)
    {
        connect();

        command.CommandText = "Delete From employee_phone_number where employee_id=@id";
        command.Prepare();
        command.Parameters.AddWithValue("@id", empNum);
        command.ExecuteNonQuery();

        String[] phoneNo = phoneNos.Split(' ', ',');

        for (int i = 0; i < phoneNo.Length; i++)
        {
            command = connection.CreateCommand();
            command.CommandText = "Insert INTO employee_phone_number VALUES(@id,@empphone)";
            command.Prepare();
            command.Parameters.AddWithValue("@empphone", phoneNo[i]);
            command.Parameters.AddWithValue("@id", empNum);
            command.ExecuteNonQuery();
        }
        disconnect();

    }

    public void insertStudent(String stdNum, Byte[] image, String fName, String lName, String gender, String street, String town, int year, String dept, int balance)
    {

        connect();

        command.CommandText = "INSERT INTO student VALUES (@stdNum,@image,@fName,@lName,@gender,@street,@town,@year,@dept,@balance);";
        command.Prepare();
        command.Parameters.AddWithValue("@stdNum", stdNum);
        command.Parameters.AddWithValue("@image", image);
        command.Parameters.AddWithValue("@fName", fName);
        command.Parameters.AddWithValue("@lName", lName);
        command.Parameters.AddWithValue("@gender", gender);
        command.Parameters.AddWithValue("@street", street);
        command.Parameters.AddWithValue("@town", town);
        command.Parameters.AddWithValue("@year", year);
        command.Parameters.AddWithValue("@dept", dept);
        command.Parameters.AddWithValue("@balance", balance);
        command.ExecuteNonQuery();

        disconnect();
    }

    public bool hasStudentEntry(String id)
    {
        connect();

        String[] ret = new String[3];

        command.CommandText = "SELECT count(1) FROM student WHERE student_number = @id";
        command.Prepare();
        command.Parameters.AddWithValue("@id", id);

        if (Convert.ToInt32(command.ExecuteScalar()) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    public bool hasEmployeeEntry(String id)
    {
        connect();

        String[] ret = new String[3];

        command.CommandText = "SELECT count(1) FROM employee WHERE employee_id = @id";
        command.Prepare();
        command.Parameters.AddWithValue("@id", id);

        if (Convert.ToInt32(command.ExecuteScalar()) == 0)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    public void assignEmployeeHall(String id, String hall)
    {
        connect();
        command.CommandText = "SELECT count(1) FROM works WHERE employee_id = @eid";
        command.Prepare();
        command.Parameters.AddWithValue("@eid", id);
        String date = System.DateTime.Now.Date.Year + "-" + System.DateTime.Now.Date.Month + "-" + System.DateTime.Now.Date.Day;
        MySqlTransaction tr = connection.BeginTransaction();
        try
        {
            if (Convert.ToInt32(command.ExecuteScalar()) == 0)
            {
                command.CommandText = "INSERT INTO works VALUES (@hall, @eid,@date );";
                command.Parameters.AddWithValue("@hall", hall);
                command.Parameters.AddWithValue("@date", date);
                command.Prepare();
                command.ExecuteNonQuery();
            }
            else
            {
                command.CommandText = "select assign_date from works where employee_id = @eid";
                command.Prepare();
                reader = command.ExecuteReader();
                reader.Read();
                String[] assign_date = reader.GetString(0).Split(' ')[0].Split('/');
                String assigndate = assign_date[2] + "-" + assign_date[1] + "-" + assign_date[0];
                reader.Close();

                command.CommandText = "select count(1) from work_history where employee_id=@eid AND assign_date=@assigndate AND hall_name=@hall";
                command.Parameters.AddWithValue("@hall", hall);
                command.Parameters.AddWithValue("@date", date);
                command.Parameters.AddWithValue("@assigndate", assigndate); command.Prepare();
                if (Convert.ToInt32(command.ExecuteScalar()) == 0)
                {
                    command.CommandText = "INSERT INTO work_history VALUES (@eid,@hall, @assigndate,@date );";
                    command.Prepare();
                    command.ExecuteNonQuery();
                }
                else
                {
                    command.CommandText = "Update work_history set left_date=@date where employee_id = @eid AND assign_date=@assigndate AND hall_name=@hall";
                    command.Prepare();
                    command.ExecuteNonQuery();
                }

                command.CommandText = "Update works set hall_name=@hall, assign_date=@date where employee_id = @eid;";
                command.Prepare();
                command.ExecuteNonQuery();
            }
            tr.Commit();
        }
        catch (MySqlException ex)
        {
            try
            {
                tr.Rollback();

            }
            catch (MySqlException ex1)
            {
                Console.WriteLine("Error: {0}", ex1.ToString());
            }

            Console.WriteLine("Error: {0}", ex.ToString());

        }
        finally
        {
            if (connection != null)
            {
                connection.Close();
            }
        }
        disconnect();
    }

    public void assignStudentRoom(String id, String hall, String room)
    {
        connect();
        command.CommandText = "SELECT count(1) FROM accommodate WHERE student_number = @id";
        command.Prepare();
        command.Parameters.AddWithValue("@id", id);
        String date = System.DateTime.Now.Date.Year + "-" + System.DateTime.Now.Date.Month + "-" + System.DateTime.Now.Date.Day;
        MySqlTransaction tr = connection.BeginTransaction();
        try
        {
            if (Convert.ToInt32(command.ExecuteScalar()) == 0)
            {
                command.CommandText = "INSERT INTO accommodate VALUES (@id, @hall, @room,@date );";
                command.Parameters.AddWithValue("@hall", hall);
                command.Parameters.AddWithValue("@date", date);
                command.Parameters.AddWithValue("@room", room);
                command.Prepare();
                command.ExecuteNonQuery();
            }
            else
            {
                command.CommandText = "select assignment_date from accommodate where student_number = @id";
                command.Prepare();
                reader = command.ExecuteReader();
                reader.Read();
                String[] assign_date = reader.GetString(0).Split(' ')[0].Split('/');
                String assigndate = assign_date[2] + "-" + assign_date[1] + "-" + assign_date[0];
                reader.Close();

                command.CommandText = "select count(1) from accommodation_history where student_number=@id AND assign_date=@assigndate AND hall_name=@hall AND room_number=@room";
                command.Parameters.AddWithValue("@hall", hall);
                command.Parameters.AddWithValue("@date", date);
                command.Parameters.AddWithValue("@room", room);
                command.Parameters.AddWithValue("@assigndate", assigndate); command.Prepare();
                if (Convert.ToInt32(command.ExecuteScalar()) == 0)
                {
                    command.CommandText = "INSERT INTO accommodation_history VALUES (@id,@hall,@room, @assigndate,@date );";
                    command.Prepare();
                    command.ExecuteNonQuery();
                }
                else
                {
                    command.CommandText = "Update accommodation_history set left_date=@date where student_number=@id AND assign_date=@assigndate AND hall_name=@hall AND room_number=@room";
                    command.Prepare();
                    command.ExecuteNonQuery();
                }

                command.CommandText = "Update accommodate set hall_name=@hall, assignment_date=@date, room_number=@room where student_number=@id";

                command.Prepare();
                command.ExecuteNonQuery();
            }
            tr.Commit();
        }
        catch (MySqlException ex)
        {
            try
            {
                tr.Rollback();

            }
            catch (MySqlException ex1)
            {
                Console.WriteLine("Error: {0}", ex1.ToString());
            }

            Console.WriteLine("Error: {0}", ex.ToString());

        }
        finally
        {
            if (connection != null)
            {
                connection.Close();
            }
        }


        disconnect();
    }
}