import javax.servlet.http.*;
import javax.servlet.*;
import java.sql.*;
import java.util.*;
import java.util.regex.*;
import java.io.*;
import java.nio.file.*;

public final class SearchServlet extends DatabaseServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        try{

            // CHECK IF THERE IS A COOKIE AND NO LOGIN SESSION, IF SO, SET THE SESSION
            HttpSession session = req.getSession();
            Cookie[] cs = req.getCookies();

            if(cs != null && session.getAttribute("userid") == null){

                // LOOP THROUGH THE COOKIES TO FIND THE LOGIN ONE
                boolean found_cookie = false;
                for(int i = 0; i < cs.length && !found_cookie; i++){

                    if(cs[i].getName().equals("userid")){

                        found_cookie = true;

                        session.setAttribute("userid", cs[i].getValue());

                    }//if

                }//for

            }//if
            
            
            // ASSEMBLING THE TOPICS LIST FOR FURTHER SEARCHES
            List<Topic> lista = new ArrayList<Topic>();
            String current_topic = "";
            
            Connection c = getConnection();

            Statement st = c.createStatement();

            ResultSet topics = st.executeQuery("SELECT * FROM topic");

            while(topics.next()){
                lista.add(new Topic(topics.getInt("IDTopic"), topics.getString("Label")));
                if(topics.getString("IDTopic").equals(req.getParameter("topic_id")))
                    current_topic = topics.getString("Label");
            }

            req.setAttribute("topics_list", lista);
            req.setAttribute("cur_topic", current_topic);


            // GETTING THE TEACHERS RESULTS
            List<SearchBean> ts = new ArrayList<SearchBean>();

            st = c.createStatement();

            // SORTING MECHANISM

            int val = Integer.parseInt(req.getParameter("sorting_by"));

            String order;

            switch(val){
                case 1:
                    order = " ORDER BY avg_score DESC";
                    break;
                case 2:
                    order = " ORDER BY TC.Tariff ASC";
                    break;
                case 3:
                    order = " order BY TC.Tariff DESC";
                    break;
                default:
                    order = "";
            }//switch

            ResultSet teachers = st.executeQuery("SELECT T.IDUser, T.Name, TC.Tariff, ROUND(IFNULL(AVG(F.Score), 0), 1) as avg_score, COUNT(F.StudentID) as num_score " + 
                                                 "FROM (teacher_topic as TC JOIN person as T ON TC.TeacherID=T.IDUser) LEFT JOIN feedback as F ON T.IDUser=F.TeacherID " +
                                                 "WHERE TC.TopicID = " + req.getParameter("topic_id") +
                                                 " GROUP BY T.IDUser" + order);

            while(teachers.next())
                ts.add(new SearchBean(teachers.getInt("IDUser"), teachers.getInt("Tariff"), teachers.getInt("num_score"), teachers.getString("Name"), teachers.getFloat("avg_score")));


            req.setAttribute("search_items", ts);

            req.getRequestDispatcher("search.jsp").forward(req, res);


        }//try

        catch (SQLException ex) {
            req.setAttribute("error_message", ex.getMessage());
            req.setAttribute("appname", req.getContextPath());
            try{req.getRequestDispatcher("errorpage.jsp").forward(req, res);}catch(Exception e){}
        }//catch

    }//doGet


}//SearchServlet