<nav class="navbar navbar-expand-lg main-navbar postion-relative">
        <form class="form-inline mr-auto">
          <ul class="navbar-nav mr-3">
            <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li>
            <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="fas fa-search"></i></a></li>
          </ul>
        </form>
        <ul class="navbar-nav navbar-right">
          <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
            <div class="d-sm-none d-lg-inline-block">{{auth()->user()->nama}}</div></a>
            <div class="dropdown-menu dropdown-menu-right">
              <a href="/{{auth()->user()->level}}/profile/{{auth()->user()->id}}" class="dropdown-item has-icon">
                <i class="fas fa-user"></i> Profile
              </a>
              <div class="dropdown-divider"></div>
              <a href="/logout" class="dropdown-item has-icon text-danger">
                <i class="fas fa-sign-out-alt"></i> Logout
              </a>
            </div>
          </li>
        </ul>
          <div>
            <img src="{{asset('assets/img/avatar/avatar-2.png')}}" style="width: 40px; border-radius: 50%;" height="40px">
          </div>
      </nav>