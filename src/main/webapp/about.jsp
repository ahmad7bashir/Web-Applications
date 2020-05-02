<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF=8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="icon" href="images/logo.ico" type="image/x-icon" /> 
        <link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
        <title>About Us</title>

        <!-- MAIN CSS -->
        <link rel="stylesheet" href="css/style.css">

        <!-- HOMEPAGE CSS -->
        <link rel="stylesheet" href="css/home.css">

        <!-- ABOUT US CSS -->
        <link rel="stylesheet" href="css/about.css">

        <!-- SIGN-UP/SIGN-IN POP-UP CSS -->
        <link rel="stylesheet" href="css/sign_up_in.css">

        <!-- FONTAWESOME CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">

        <!-- jQuery/jQuery UI -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

    </head>
    <body>

        <!-- WEBSITE HEADER start -->

        <header>

            <div id="logo_wrap">
                <a href="index.html"><img src="images/logo.png"></a>
            </div>

            <div id="menu_wrap">
                <nav>
                    <a href="index.jsp">Home</a>
                    <a href="about.jsp" class="current_page">About us</a>
                    <a href="" onclick="toggle_modal(event);">Sign in</a>
                </nav>
            </div>

        </header>

        <!-- WEBSITE HEADER end -->

        <!-- ABOUT US MAIN BODY start -->

        <!-- IMAGE AND QUOTATION BLOCK start -->

        <div class="main_image_container">
            <img src="images/about_us_image.png" class="main_image" alt="Books">
            >           <div class="quote_container">
            <blockquote>
                <hr class="horizontal_line"/>
                <br>
                <p class="quotation">"If you have knowledge, let others light their candles in it."</p>
                <br>
                <hr class="horizontal_line"/>
            </blockquote>
            <a class="author_quote" href="https://en.wikipedia.org/wiki/Margaret_Fuller" target="_blank">&#126;Margaret Fuller</a>
            </div>
        </div>

        <!-- IMAGE AND QUOTATION BLOCK end -->

        <!-- INFO ROW: WEBSITE INFORMATION start -->

        <div class="website_info_row">
            <h2>What is RemyTutor?</h2>
            <br>
            <p>In these trying times more than ever, being able to keep ourselves healthy and active without leaving the comfort of our homes is essential, although not always easy. This project might be an additional handy tool for making us momentarily forget the urge to go outside by making our indoor life a bit more pleasant.  
            </p> 
            <br />
            <p>RemyTutor is a remote learning platform for anything people might want to teach and trasmit to other learning enthusiasts. Ranging from school subjects, like math or history, to more practical things, like yoga or dance, RemyTutor is the right place to find a teacher and book a lesson! When it comes to teaching however, finding the right person, or even finding someone, can be a challenging task and might often feel like a Russian roulette. Therefore, our goal is to provide an online safe place where supply and demand is offered in a structured way, in order to ease the flow of teaching and to improve its overall quality.
        </div>
        <hr class="horizontal_line"/>

        <!-- INFO ROW: WEBSITE INFORMATION end -->

        <!-- MEMBER ROWS start -->

        <div class="team_info_row">
            <h2>Our Team:</h2>      
        </div>

        <div class="main_container">

            <!-- first member -->  
            <div class="info_member_container">
                <p class="member_name">Marco Dell'Anna</p>
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristirci in velit. Praesent scelerisque tortor sed accumsan convallis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctu
                </p>  
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristirci in velit. Praesent scelerisque tortor sed accumsan convallis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. 
                </p>
            </div>            

            <div class="photoContact_member_container">
                <img class="photo_container" src="images/MarcoG.jpg" alt="marco_dell'anna_photo"><br><br>
                <a class="button" href="mailto:marco.dellanna@studenti.unipd.it">CONTACT</a>               
            </div>

            <div class="break_flexbox"></div>

            <!-- second member -->              
            <div class="info_member_container">
                <p class="member_name">Xianwen Jin</p>
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristirci in velit. Praesent scelerisque tortor sed accumsan convallis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctu
                </p>  
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristirci in velit. Praesent scelerisque tortor sed accumsan convallis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. 
                </p>
            </div>            

            <div class="photoContact_member_container">
                <img class="photo_container" src="images/Jin.jpg" alt="xianwen_jin_photo"><br><br>
                <a class="button" href="mailto:xianwen.jin@studenti.unipd.it">CONTACT</a>               
            </div>

            <div class="break_flexbox"></div>

            <!-- third member -->              
            <div class="info_member_container">
                <p class="member_name">Marco Dalla Mutta</p>
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristirci in velit. Praesent scelerisque tortor sed accumsan convallis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctu
                </p>  
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristirci in velit. Praesent scelerisque tortor sed accumsan convallis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. 
                </p>
            </div>            

            <div class="photoContact_member_container">
                <img class="photo_container" src="images/MarcoDM.jpg" alt="marco_dalla_mutta_photo"><br><br>
                <a class="button" href="mailto:marco.dallamutta@studenti.unipd.it">CONTACT</a>               
            </div>

            <div class="break_flexbox"></div>

            <!-- fourth member -->              
            <div class="info_member_container">
                <p class="member_name">Memen Salihi</p>
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristirci in velit. Praesent scelerisque tortor sed accumsan convallis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctu
                </p>  
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristirci in velit. Praesent scelerisque tortor sed accumsan convallis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. 
                </p>
            </div>            

            <div class="photoContact_member_container">
                <img class="photo_container" src="images/Memen-photo.jpeg" alt="memen_salihi_photo"><br><br>
                <a class="button" href="mailto:memenhamzahobaid.salihi@studenti.unipd.it">CONTACT</a>               
            </div>

            <div class="break_flexbox"></div>

            <!-- fifth member -->              
            <div class="info_member_container">
                <p class="member_name">Victor Semencenco</p>
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristirci in velit. Praesent scelerisque tortor sed accumsan convallis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctu
                </p>  
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristirci in velit. Praesent scelerisque tortor sed accumsan convallis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. 
                </p>
            </div>            

            <div class="photoContact_member_container">
                <img class="photo_container" src="images/Victor-photo.jpeg" alt="victor_semencenco_photo"><br><br>
                <a class="button" href="mailto:victor.semencenco@studenti.unipd.it">CONTACT</a>               
            </div>

            <div class="break_flexbox"></div>

            <!-- sixth member -->              
            <div class="info_member_container">
                <p class="member_name">Ahmad Bashir Usman</p>
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristirci in velit. Praesent scelerisque tortor sed accumsan convallis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctu
                </p>  
                <br>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristirci in velit. Praesent scelerisque tortor sed accumsan convallis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. 
                </p>
            </div>            

            <div class="photoContact_member_container">               
                <img class="photo_container" src="images/ahmad-photo.jpeg" alt="ahmad_bashir_usman_photo"><br><br>
                <a class="button" href="mailto:ahmadbashir.usman@studenti.unipd.it">CONTACT</a>               
            </div>

            <div class="break_flexbox"></div>

        </div>

        <br>
        <br>

        <!-- MEMBER ROWS end -->

        <!-- SIGN IN PAGE start -->

        <div class="modal">

            <div class="sign_up_in">

                <div class="sign_up">

                    <div>

                        <p><img src="images/signup-image.png"><br><br><a href="" onclick="flip_registration(event)">I am already a member</a></p>


                    </div>

                    <div>

                        <h2>Sign up</h2>

                        <span><img src="images/account.png"><input type="text" placeholder="Full name"></span>

                        <span><img src="images/email.png"><input type="text" placeholder="E-mail address"></span>

                        <span><img src="images/password.png"><input type="password" placeholder="Password"></span>

                        <span><img src="images/password.png"><input type="password" placeholder="Repeat password"></span>

                        <span><label class="custom_checkbox">
                            <input type="checkbox">
                            <span class="checkmark"></span>
                            </label> I agree to terms and conditions and the privacy policy</span>

                        <br><input type="submit" value="Register" class="button">

                    </div>

                </div>

                <div class="sign_in">

                    <div>

                        <p><img src="images/signin-image.jpg"><br><br><a href="" onclick="flip_registration(event)">Create an account</a></p>

                    </div>

                    <div>

                        <h2>Sign in</h2>

                        <span><img src="images/account.png"><input type="email" placeholder="E-mail address"></span>

                        <span><img src="images/password.png"><input type="password" placeholder="Password"></span>

                        <span><label class="custom_checkbox">
                            <input type="checkbox" checked>
                            <span class="checkmark"></span>
                            </label> Remember me</span>

                        <br><input type="submit" value="Log in" class="button">

                        <span id="login_error"></span>

                    </div>

                </div>

            </div>

            <div onclick="toggle_modal(event)" class="close_modal">X</div>

        </div>

        <!-- MAIN JS -->

        <script src="js/home.js"></script>

        <!-- SIGN IN PAGE end -->

        <!-- ABOUT US MAIN BODY end -->

        <!-- WEBSITE FOOTER start -->

        <footer>

            <p>
                <img src="images/logo_hatonly.png">&copy; RemyTutor: sharing knowledge and passions &hearts;

                <i class="fab fa-facebook-square fa-2x" style="color: #3b5998"></i>
                <i class="fab fa-twitter-square fa-2x" style="color: #1DA1F2"></i>
                <i class="fab fa-instagram-square fa-2x" style="color: #833AB4"></i>
            </p>

        </footer>

        <!-- WEBSITE FOOTER end -->

        <!-- MAIN JS -->

        <script src="js/home.js"></script>

    </body>

</html>