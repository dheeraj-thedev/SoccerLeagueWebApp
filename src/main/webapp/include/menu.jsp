<nav class="navbar navbar-expand-lg navbar-light bg-primary">
	<a class="navbar-brand" href="#">TrainingBasket</a>

	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarText" aria-controls="navbarText"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarText">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="/">Home <span
					class="sr-only">(current)</span></a></li>
			<li class="nav-item dropdown ">
			<a	class=" btn btn-outline-light dropdown-toggle " data-toggle="dropdown" href="#"
				role="button" aria-haspopup="true" aria-expanded="false"> Player</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="/views/listleague.jsp">List
						Leagues</a> <a class="dropdown-item" href="/views/registerleague.jsp">Register
						For League</a>
				</div></li>
<<<<<<< HEAD
			<li class="nav-item dropdown">
			<a
				class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
=======
			<li class="nav-item dropdown"><a
				class="btn btn-outline-light dropdown-toggle" data-toggle="dropdown" href="#"
>>>>>>> branch 'master' of https://github.com/dheeraj-thedev/SoccerLeagueWebApp.git
				role="button" aria-haspopup="true" aria-expanded="false"> League
					Admin</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="/views/listleague.jsp">List
						Leagues</a> <a class="dropdown-item" href="/views/addleague.jsp">Add
						League</a>
				</div></li>
				<li class="nav-item dropdown">
			<a
				class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
				role="button" aria-haspopup="true" aria-expanded="false"> League
					User Management</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="/new" method="post">Add New User
					</a> <a class="dropdown-item" href="/list" method="post">List All Users
						League</a> 
				</div></li>
			<li class="nav-item dropdown"><a
				class="btn btn-outline-light dropdown-toggle" data-toggle="dropdown" href="#"
				role="button" aria-haspopup="true" aria-expanded="false">Utilities</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="/views/genpayslips.jsp">Generate Pay Slips</a>
				</div></li>
		</ul>
	</div>
</nav>