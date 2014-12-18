<body>
<a href="HandleUser?uname=zy">Get</a>
<form action="HandleUser" method="POST">

<input  name="action" value="update" />
<input  name="name" value="zy" />
<input  name="password" value="abc123" />
<input  name="firstname" value="Zhengzheng" />
<input  name="lastname" value="Yang" />
<input  name="birthdate" value="1982-1-7" />
<input  name="resume" value="" />

<a href="#" onclick="this.parentNode.submit()">Update!</a>

</form>
</body>