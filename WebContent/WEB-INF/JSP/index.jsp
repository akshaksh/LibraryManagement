<div class="modal-body row">
	<div class="col-md-6">
		<div class="container">
		  <div class="row">
			<div class="col-md-6">
				<div ng-app = "mainApp" ng-controller = "studentController">
					<form name="studentForm" commandName="addUser" class="form-horizontal" action="http://localhost:8085/LibraryManagement/Check.html" method="POST" onsubmit="return validateForm()" novalidate>
						  <fieldset>
							<div id="legend">
							  <legend class="">Register</legend>
							</div>
							<div class="control-group">
							  <label class="control-label" for="Username">Username</label>
							  <div class="controls">
								<input id="Username" name="Username" ng-model="Username" placeholder="Username" class="form-control input-lg" type="text" ng-pattern ="/^[a-zA-Z\s]*$/" required>
								    <div style = "color:red" ng-show = "studentForm.Username.$dirty && studentForm.Username.$invalid">
										<div ng-show = "studentForm.Username.$error.required">Username is required Field.</div>
										<div ng-show = "studentForm.Username.$error.pattern">Username must conatains [a-z,A-Z and spaces] Only.</div>
									</div>
							  </div>
							</div>
						 
							<div class="control-group">
							  <label class="control-label" for="email">E-mail</label>
							  <div class="controls">
								<input id="email" name="email" ng-model="email" placeholder="email@gmail.com" class="form-control input-lg" type="email" required>
								<div style = "color:red" ng-show = "studentForm.email.$dirty && studentForm.email.$invalid">
									<div ng-show = "studentForm.email.$error.required">Email is required Field.</div>
									<div ng-show = "studentForm.email.$error.email">Invalid email address.</div>
									
								</div>
							  </div>
							</div>
						 
							<div class="control-group">
							  <label class="control-label" for="password">Password</label>
							  <div class="controls">
								<input id="password" ng-model="password" name="password" placeholder="Password" class="form-control input-lg" ng-minlength="8" ng-maxlength="20" ng-pattern="/(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z])/" type="password" required>
								<div style = "color:red" ng-show = "studentForm.password.$dirty && studentForm.password.$invalid">
										<div ng-show = "studentForm.password.$error.required">password is required Field.</div>
										<div ng-show = "studentForm.password.$error.minlength">password should not be less than 8 characters</div>
										<div ng-show = "studentForm.password.$error.maxlength">password should be between 8-20 characters</div>
										<div ng-show = "studentForm.password.$error.pattern">Must contain one lower,one uppercase letter,and one non-alpha character (a number or a symbol.)</div>
									</div>
							  </div>
							</div>
						 
							<div class="control-group">
							  <label class="control-label" for="password_confirm">Password (Confirm)</label>
							  <div class="controls">
								<input id="password_confirm" ng-model="password_confirm" name="password_confirm" placeholder="Password(Confirm)" class="form-control input-lg" type="password"  required>
								<div style = "color:red" ng-show = "studentForm.password_confirm.$dirty && studentForm.password_confirm.$invalid">
										<div ng-show = "studentForm.password_confirm.$error.required">Confirm Password is required Field.</div>
								</div>
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="Contact">Contact</label>
							  <div class="controls">
								<input id="Contact" name="Contact" ng-model="Contact" placeholder="9855514371" class="form-control input-lg" type="text" ng-pattern ="/^[789]\d{9}$/" required>
								    <div style = "color:red" ng-show = "studentForm.Contact.$dirty && studentForm.Contact.$invalid">
										<div ng-show = "studentForm.Contact.$error.required">Contact is required Field.</div>
										<div ng-show = "studentForm.Contact.$error.pattern">Contact must be of 10 digits and should be start with[7,8 OR 9]</div>
									</div>
							  </div>
							</div>
							<div class="row">
									<div class="control-group col-xs-4 col-md-4">
									  <label class="control-label" for="Country">Country</label>
									  <div class="controls">
										<select id="country" class="form-control">
												<option>Afghanistan</option>
												<option>Bahamas</option>
												<option>Cambodia</option>
												<option>Denmark</option>
												<option>Ecuador</option>
												<option>Fiji</option>
												<option>Gabon</option>
												<option>Haiti</option>
											</select>
									  </div>
									</div>
									<div class="control-group col-xs-3 col-md-3">
									  <label class="control-label" for="Gender">Gender</label>
									  <div class="controls">
										<select id="country" class="form-control">
												<option>Male</option>
												<option>Female</option>
												<option>Unknown</option>
											</select>
									  </div>
									</div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="date">BirthDate</label>
							  <div class="row">
									<div class="controls col-xs-3 col-md-3">
										<select id="Month" class="form-control" name="Month">
											<option>Month</option>
											<option>01</option>
											<option>02</option>
											<option>03</option>
											<option>04</option>
											<option>05</option>
											<option>06</option>
											<option>07</option>
											<option>08</option>
											<option>09</option>
											<option>10</option>
											<option>11</option>
											<option>12</option>
										</select>
									</div>
									<div class="controls col-xs-3 col-md-3">
										<select id="Day" class="form-control" name="Day">
												  <option value="">Day</option>
												  <option value="01">01</option>
												  <option value="02">02</option>
												  <option value="03">03</option>
												  <option value="04">04</option>
												  <option value="05">05</option>
												  <option value="06">06</option>
												  <option value="07">07</option>
												  <option value="08">08</option>
												  <option value="09">09</option>
												  <option value="10">10</option>
												  <option value="11">11</option>
												  <option value="12">12</option>
												  <option value="13">13</option>
												  <option value="14">14</option>
												  <option value="15">15</option>
												  <option value="16">16</option>
												  <option value="17">17</option>
												  <option value="18">18</option>
												  <option value="19">19</option>
												  <option value="20">20</option>
												  <option value="21">21</option>
												  <option value="22">22</option>
												  <option value="23">23</option>
												  <option value="24">24</option>
												  <option value="25">25</option>
												  <option value="26">26</option>
												  <option value="27">27</option>
												  <option value="28">28</option>
												  <option value="29">29</option>
												  <option value="30">30</option>
												  <option value="31">31</option>
												
										</select>
									</div>
									<div class="controls col-xs-3 col-md-3">
										<select id="Year" class="form-control" name="Year">
											 <option value="">Year</option>
											  <option value="2012">2012</option>
											  <option value="2011">2011</option>
											  <option value="2010">2010</option>
											  <option value="2009">2009</option>
											  <option value="2008">2008</option>
											  <option value="2007">2007</option>
											  <option value="2006">2006</option>
											  <option value="2005">2005</option>
											  <option value="2004">2004</option>
											  <option value="2003">2003</option>
											  <option value="2002">2002</option>
											  <option value="2001">2001</option>
											  <option value="2000">2000</option>
											  <option value="1999">1999</option>
											  <option value="1998">1998</option>
											  <option value="1997">1997</option>
											  <option value="1996">1996</option>
											  <option value="1995">1995</option>
											  <option value="1994">1994</option>
											  <option value="1993">1993</option>
											  <option value="1992">1992</option>
											  <option value="1991">1991</option>
											  <option value="1990">1990</option>
											  <option value="1989">1989</option>
											  <option value="1988">1988</option>
											  <option value="1987">1987</option>
											  <option value="1986">1986</option>
											  <option value="1985">1985</option>
											  <option value="1984">1984</option>
											  <option value="1983">1983</option>
											  <option value="1982">1982</option>
											  <option value="1981">1981</option>
											  <option value="1980">1980</option>
											  <option value="1979">1979</option>
											  <option value="1978">1978</option>
											  <option value="1977">1977</option>
											  <option value="1976">1976</option>
											  <option value="1975">1975</option>
											  <option value="1974">1974</option>
											  <option value="1973">1973</option>
											  <option value="1972">1972</option>
											  <option value="1971">1971</option>
											  <option value="1970">1970</option>
											  <option value="1969">1969</option>
											  <option value="1968">1968</option>
											  <option value="1967">1967</option>
											  <option value="1966">1966</option>
											  <option value="1965">1965</option>
											  <option value="1964">1964</option>
											  <option value="1963">1963</option>
											  <option value="1962">1962</option>
											  <option value="1961">1961</option>
											  <option value="1960">1960</option>
											  <option value="1959">1959</option>
											  <option value="1958">1958</option>
											  <option value="1957">1957</option>
											  <option value="1956">1956</option>
											  <option value="1955">1955</option>
											  <option value="1954">1954</option>
											  <option value="1953">1953</option>
											  <option value="1952">1952</option>
											  <option value="1951">1951</option>
											  <option value="1950">1950</option>
											  <option value="1949">1949</option>
											  <option value="1948">1948</option>
											  <option value="1947">1947</option>
											  <option value="1946">1946</option>
											  <option value="1945">1945</option>
											  <option value="1944">1944</option>
											  <option value="1943">1943</option>
											  <option value="1942">1942</option>
											  <option value="1941">1941</option>
											  <option value="1940">1940</option>
											  <option value="1939">1939</option>
											  <option value="1938">1938</option>
											  <option value="1937">1937</option>
											  <option value="1936">1936</option>
											  <option value="1935">1935</option>
											  <option value="1934">1934</option>
											  <option value="1933">1933</option>
											  <option value="1932">1932</option>
											  <option value="1931">1931</option>
											  <option value="1930">1930</option>
											  <option value="1929">1929</option>
											  <option value="1928">1928</option>
											  <option value="1927">1927</option>
											  <option value="1926">1926</option>
											  <option value="1925">1925</option>
											  <option value="1924">1924</option>
											  <option value="1923">1923</option>
											  <option value="1922">1922</option>
											  <option value="1921">1921</option>
											  <option value="1920">1920</option>
											  <option value="1919">1919</option>
											  <option value="1918">1918</option>
											  <option value="1917">1917</option>
											  <option value="1916">1916</option>
											  <option value="1915">1915</option>
											  <option value="1914">1914</option>
											  <option value="1913">1913</option>
											  <option value="1912">1912</option>
											  <option value="1911">1911</option>
											  <option value="1910">1910</option>
											  <option value="1909">1909</option>
											  <option value="1908">1908</option>
											  <option value="1907">1907</option>
											  <option value="1906">1906</option>
											  <option value="1905">1905</option>
											  <option value="1904">1904</option>
											  <option value="1903">1903</option>
											  <option value="1901">1901</option>
											  <option value="1900">1900</option>
										</select>
									</div>
							  </div>
							</div>
						 <br>
							<div class="control-group">
							  <!-- Button -->
							    <div class="controls" style = "float:left;">
								<button class="btn btn-success" ng-disabled = "studentForm.Username.$dirty &&
                        studentForm.Username.$invalid || studentForm.Username.$untouched || studentForm.email.$dirty &&
                        studentForm.email.$invalid || studentForm.email.$untouched || studentForm.Contact.$dirty &&
                        studentForm.Contact.$invalid || studentForm.Contact.$untouched">Register</button>
							  </div>
							</div>
						  </fieldset>
					</form>
				</div>
			</div>
		  </div>
		</div>
	</div>
	<div class="col-md-6">
		   <div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000" style="width:90%;right:71px">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="http://localhost:8085/LibraryManagement/resource/Images/img1.jpg" alt="Chania" width="300" height="345" style="width:65%">
      </div>

      <div class="item">
        <img src="http://localhost:8085/LibraryManagement/resource/Images/img2.jpg" alt="Chania" width="300" height="345" style="width:65%">
      </div>
    
      <div class="item">
        <img src="http://localhost:8085/LibraryManagement/resource/Images/img3.jpg" alt="Flower" width="300" height="345" style="width:65%">
      </div>

      <div class="item">
        <img src="http://localhost:8085/LibraryManagement/resource/Images/img4.jpg" alt="Flower" width="300" height="345" style="width:65%">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next" style="right:341px;">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

	</div><!---End-->
</div>