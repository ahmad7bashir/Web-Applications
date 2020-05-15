<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="icon" href="images/logo.ico" type="image/x-icon" /> 
        <link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
        <title>Chat</title> 


        <!------------------------ THE MAIN CSS --------->

        <link rel="stylesheet" href="css/style.css">

        <!-- CONTROL PANEL HOME CSS -->

        <link rel="stylesheet" href="css/control.css">

        <!-- THE CHAT CSS -->

        <link rel="stylesheet"   href="css/chat.css" />

        <!-- FONTAWESOME CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">

        <!-- jQuery/jQuery UI -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

    </head>

    <body>

        <input type="checkbox" id="toggle_menu">
        <jsp:include page="include/menu.jsp"/>


        <div class="lesson_proposal">

            <div>
                <h1>Propose a lesson to MEMEN</h1>

                <table>

                    <tr>

                        <td>
                            Date:
                        </td>

                        <td>
                            <input type="date">
                        </td>

                    </tr>

                    <tr>

                        <td>
                            Time: 
                        </td>

                        <td>
                            <input type="time">
                        </td>

                    </tr>

                    <tr>

                        <td>
                            Tariff:
                        </td>

                        <td>
                            <input type="number" min="1">€
                        </td>

                    </tr>

                    <tr>

                        <td>
                            Duration:
                        </td>

                        <td>
                            <input type='number' min='0' max='24' value="0">h&nbsp;&nbsp;
                            <input type='number' min='0' max='59' value="0" step="15">m
                        </td>

                    </tr>
                </table>

                <p style="text-align: center">
                    <button class="button">Send</button>
                </p>
            </div>

            <span onclick="toggle_modal(event)" class="close_modal">X</span>
        </div>
        <main>

            <div>


                <!---------------THE CHAT LIST---------------------------------->
                <div class="contacts_body">
                    <!--this is the search form-->

                    <form>
                        <input type="text" name="text" class="search"  placeholder="Search contact..." autocomplete="off" onkeypress="if(event.keyCode == 13) filter_chatlist(ev, this.nextElementSibling);">
                        <button class="button" onclick="filter_chatlist(event, this)">Search</button>
                    </form>

                    <div class="chatlogs2">

                        <ul class="tab">
                            
                            <c:forEach var="contact" items="${contactlist}" varStatus="loop">   
                                    
                                <li onclick="openChat(event, ${contact.userID})"${loop.first ? ' id="defaultOpen"' : ''} class="tablinks">
                                        <div>
                                            <div class="img_cont">
                                                <img src="/imageset/profile/${contact.userID}.jpg">
                                            </div>
                                            
                                            <div class="user_info">
                                                <p><strong>${contact.name} ${contact.surname}</strong></p>
                                                <p>
                                                    ${contact.lastMessage}
                                                </p>
                                            </div>
                                        </div>
                                </li>

                            </c:forEach>
                        </ul>

                    </div>


                </div> 

                <div  class="chatbox">

                    <div id="1" class="tabcontent">

                        <!-- this stucture of the chat logs-->
                        <div class= "chatlogs">


                            <!-- STUCTURE OF EACH CHAT-->
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>

                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>

                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>

                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>

                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>

                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>

                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>

                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>

                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/Memen-photo.jpeg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/MarcoG.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>

                        </div>

                        <!--this is the chat form-->
                        <div class= "chat-form">
                            <textarea></textarea>
                            <button class="send_proposal" onclick="toggle_modal(event)"><i class="far fa-paper-plane"></i></button>
                            <button class="button">Send</button>
                        </div>

                    </div>

                    <div id="3" class ="tabcontent">

                        <!-- this stucture of the chat logs-->
                        <div class= "chatlogs">


                            <!-- STUCTURE OF EACH CHAT-->

                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/users_profile/2.jpg"> </div>
                                <p class= "chat-message"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/users_profile/1.jpg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/users_profile/2.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/users_profile/1.jpg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>

                        </div>

                        <!--this is the chat form-->
                        <div class= "chat-form">
                            <textarea></textarea>
                            <button class="send_proposal" onclick="toggle_modal(event)"><i class="far fa-paper-plane"></i></button>
                            <button class="button">Send</button>
                        </div>

                    </div>

                    <div id="4" class="tabcontent">

                        <!-- this stucture of the chat logs-->
                        <div class= "chatlogs">


                            <!-- STUCTURE OF EACH CHAT-->

                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/users_profile/2.jpg"> </div>
                                <p class= "chat-message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristirci in velit. Praesent scelerisque tortor sed accumsan convallis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luct</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/users_profile/1.jpg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>
                            <div class= "chat self">
                                <div class= "user-photo"> <img src="images/users_profile/2.jpg"> </div>
                                <p class= "chat-message">hello !!!</p>
                            </div>
                            <div class= "chat friend">
                                <div class= "user-photo"> <img src="images/users_profile/1.jpg"> </div>
                                <p class= "chat-message">hi, whats up there!</p>
                            </div>

                        </div>

                        <!--this is the chat form-->
                        <div class= "chat-form">
                            <textarea></textarea>
                            <button class="send_proposal" onclick="toggle_modal(event)"><i class="far fa-paper-plane"></i></button>
                            <button class="button">Send</button>
                        </div>

                    </div>


                </div>


            </div>

        </main>

        <!-- MAIN JQUERY, POPPER.JS AND BOOTSTRAP LIBRARIES-->

        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

        <!-- CHAT JS -->

        <script src="js/chat.js"></script>

    </body>


</html>
