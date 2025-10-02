<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanal.aspx.cs" Inherits="shadi_bebsite.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
 
     <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
     <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.0/dist/chart.umd.min.js"></script>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  
  
    <style>
  body {
    background: #f8fbff; /* light background */
    font-family: Arial, sans-serif;
  }

  /* Sidebar */
  .sidebar {
    background: linear-gradient(180deg, #0b4f8c, #083b68); /* blue gradient */
    min-height: 100vh;
    color: white;
    padding: 15px;
  }
  .sidebar .nav-link { color: #eee; display:block; padding:8px; }
  .sidebar .nav-link.active {
    background: rgba(255,255,255,0.1);
    border-radius: 6px;
  }

  /* Brand name */
  .brand { font-weight: bold; font-size: 18px; margin-bottom: 20px; }

  /* Cards */
  .card-stats {
    border-left: 4px solid #d4af37; /* gold border */
    background: white;
    padding: 15px;
    border-radius: 6px;
    margin-bottom: 20px;
  }
  .stat-value { font-size: 20px; font-weight: bold; }
  .small-muted { color: #6c757d; font-size: 13px; }

  /* Profile Picture */
  .profile-pic {
    width: 40px; height: 40px;
    border-radius: 6px;
    object-fit: cover;
  }
</style>
</head>
    
<body>
    <div class="d-flex">
    <!-- SIDEBAR -->
    <nav id="sidebar" class="sidebar p-3">
      <div class="d-flex align-items-center mb-4">
        <div class="me-2 p-2 bg-white rounded-circle" style="width:48px;height:48px;display:grid;place-items:center">
          <i class="bi bi-heart-fill" style="color:var(--royal-blue);font-size:1.4rem"></i>
        </div>
        <div>
          <div class="brand">Shaadi Admin</div>
          <div class="small text-white-50">Admin Dashboard</div>
        </div>
      </div>

      <hr style="border-color:rgba(255,255,255,0.08)">

      <ul class="nav flex-column gap-1">
        <li class="nav-item"><a href="#" class="nav-link active"><i class="bi bi-speedometer2 me-2"></i>Dashboard</a></li>
        <li class="nav-item"><a href="#users" class="nav-link"><i class="bi bi-people-fill me-2"></i>Manage Users</a></li>
        <li class="nav-item"><a href="#plans" class="nav-link"><i class="bi bi-credit-card-2-front-fill me-2"></i>Membership Plans</a></li>
        <li class="nav-item"><a href="#verification" class="nav-link"><i class="bi bi-shield-check me-2"></i>Profile Verification</a></li>
        <li class="nav-item"><a href="#reports" class="nav-link"><i class="bi bi-flag-fill me-2"></i>Reports & Complaints</a></li>
        <li class="nav-item"><a href="#content" class="nav-link"><i class="bi bi-image-fill me-2"></i>Content Management</a></li>
        <li class="nav-item"><a href="#analytics" class="nav-link"><i class="bi bi-graph-up-arrow me-2"></i>Analytics</a></li>
        <li class="nav-item mt-3"><a href="#" class="nav-link"><i class="bi bi-gear-fill me-2"></i>Settings</a></li>
      </ul>

      <div class="mt-4 small text-white-50">Logged in as <strong>Admin</strong></div>
    </nav>

    <!-- MAIN CONTENT -->
    <div class="flex-grow-1 p-4" id="mainContent" style="min-height:100vh">
      <!-- Topbar -->
      <div class="d-flex justify-content-between align-items-center mb-4">
        <div class="d-flex align-items-center gap-3">
          <button class="btn btn-outline-secondary d-lg-none" id="toggleSidebar"><i class="bi bi-list"></i></button>
          <h4 class="mb-0">Dashboard</h4>
          <span class="small-muted ms-2">Overview & quick actions</span>
        </div>

        <div class="d-flex align-items-center gap-3">
          <div class="dropdown">
            <button class="btn btn-light border dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"> <i class="bi bi-bell"></i> <span class="badge bg-danger rounded-pill">3</span></button>
            <ul class="dropdown-menu dropdown-menu-end p-2" style="min-width:260px">
              <li class="mb-2"><strong>Recent Alerts</strong></li>
              <li class="dropdown-item small">New premium signup — <span class="text-muted">2 hrs ago</span></li>
              <li class="dropdown-item small">Profile flagged — <span class="text-muted">4 hrs ago</span></li>
              <li class="dropdown-item small">Payment failed — <span class="text-muted">1 day ago</span></li>
            </ul>
          </div>

          <div class="d-flex align-items-center border rounded p-1">
            <img src="https://i.pravatar.cc/44" alt="admin" class="profile-pic me-2">
            <div>
              <div style="font-weight:600">Admin</div>
              <div class="small text-muted">Super Admin</div>
            </div>
          </div>
        </div>
      </div>

      <!-- STATS CARDS -->
      <div class="row g-3 mb-4">
        <div class="col-sm-6 col-md-3">
          <div class="card p-3 card-stats shadow-sm">
            <div class="d-flex justify-content-between align-items-center">
              <div>
                <div class="small-muted">Total Users</div>
                <div class="stat-value">45,820</div>
                <div class="small text-success">+3.4% since last week</div>
              </div>
              <i class="bi bi-people-fill" style="font-size:2.2rem;color:var(--royal-blue)"></i>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-3">
          <div class="card p-3 card-stats shadow-sm">
            <div class="d-flex justify-content-between align-items-center">
              <div>
                <div class="small-muted">Active Profiles</div>
                <div class="stat-value">12,402</div>
                <div class="small text-success">+1.1% today</div>
              </div>
              <i class="bi bi-person-check-fill" style="font-size:2.2rem;color:var(--royal-blue)"></i>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-3">
          <div class="card p-3 card-stats shadow-sm">
            <div class="d-flex justify-content-between align-items-center">
              <div>
                <div class="small-muted">Premium Members</div>
                <div class="stat-value">3,210</div>
                <div class="small text-warning">Conversion 7.0%</div>
              </div>
              <i class="bi bi-star-fill" style="font-size:2.2rem;color:var(--gold)"></i>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-3">
          <div class="card p-3 card-stats shadow-sm">
            <div class="d-flex justify-content-between align-items-center">
              <div>
                <div class="small-muted">Revenue (Monthly)</div>
                <div class="stat-value">₹1.24L</div>
                <div class="small text-success">+9.2% MoM</div>
              </div>
              <i class="bi bi-currency-rupee" style="font-size:2.2rem;color:var(--royal-blue)"></i>
            </div>
          </div>
        </div>
      </div>

      <!-- TWO COLUMNS: Left = Users, Right = Analytics -->
      <div class="row g-3">
        <div class="col-lg-7">
          <div class="card shadow-sm p-3">
            <div class="d-flex justify-content-between align-items-center mb-3">
              <h5 class="mb-0">Manage Users</h5>
              <div class="small-muted">Approve or block profiles quickly</div>
            </div>

            <div class="table-responsive">
              <table class="table table-hover align-middle">
                <thead>
                  <tr>
                    <th>Profile</th>
                    <th>Name</th>
                    <th>Age / Location</th>
                    <th>Membership</th>
                    <th>Status</th>
                    <th class="text-end">Actions</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td><img src="https://i.pravatar.cc/48?img=12" class="rounded" alt="p"></td>
                    <td><strong>Asha R.</strong><div class="small-muted">ashra@example.com</div></td>
                    <td>28, Mumbai</td>
                    <td>Free</td>
                    <td><span class="badge bg-warning text-dark">Pending</span></td>
                    <td class="text-end">
                      <div class="btn-group" role="group">
                        <button class="btn btn-sm btn-success" title="Approve"><i class="bi bi-check-lg"></i></button>
                        <button class="btn btn-sm btn-danger" title="Reject"><i class="bi bi-x-lg"></i></button>
                        <button class="btn btn-sm btn-secondary" title="Block"><i class="bi bi-slash-circle"></i></button>
                      </div>
                    </td>
                  </tr>

                  <tr>
                    <td><img src="https://i.pravatar.cc/48?img=18" class="rounded" alt="p"></td>
                    <td><strong>Rohit K.</strong><div class="small-muted">rohit@example.com</div></td>
                    <td>31, Delhi</td>
                    <td>Premium</td>
                    <td><span class="badge bg-success">Active</span></td>
                    <td class="text-end">
                      <div class="btn-group">
                        <button class="btn btn-sm btn-outline-primary" title="View"><i class="bi bi-eye"></i></button>
                        <button class="btn btn-sm btn-secondary" title="Block"><i class="bi bi-slash-circle"></i></button>
                      </div>
                    </td>
                  </tr>

                </tbody>
              </table>
            </div>

            <div class="d-flex justify-content-end mt-3">
              <button class="btn btn-outline-primary btn-sm">View All Users</button>
            </div>
          </div>

          <!-- Membership Plans -->
          <div class="card shadow-sm p-3 mt-3">
            <div class="d-flex justify-content-between align-items-center mb-3">
              <h5 class="mb-0">Membership Plans</h5>
              <button class="btn btn-sm btn-primary">Create Plan</button>
            </div>

            <div class="row g-3">
              <div class="col-md-4">
                <div class="border rounded p-3 h-100">
                  <div class="d-flex justify-content-between align-items-start">
                    <div>
                      <h6>Free</h6>
                      <div class="small-muted">Basic access, limited messages</div>
                    </div>
                    <div class="text-end">
                      <div class="h5 mb-0">₹0</div>
                      <div class="small-muted">/ lifetime</div>
                    </div>
                  </div>
                  <hr>
                  <ul class="small-muted">
                    <li>Profile creation</li>
                    <li>Limited matches</li>
                  </ul>
                  <div class="mt-2 text-end">
                    <button class="btn btn-outline-secondary btn-sm">Edit</button>
                  </div>
                </div>
              </div>

              <div class="col-md-4">
                <div class="border rounded p-3 h-100">
                  <div class="d-flex justify-content-between align-items-start">
                    <div>
                      <h6>Gold</h6>
                      <div class="small-muted">Popular — unlimited messages</div>
                    </div>
                    <div class="text-end">
                      <div class="h5 mb-0">₹599</div>
                      <div class="small-muted">/ month</div>
                    </div>
                  </div>
                  <hr>
                  <ul class="small-muted">
                    <li>Unlimited messages</li>
                    <li>Priority listing</li>
                  </ul>
                  <div class="mt-2 text-end">
                    <button class="btn btn-outline-secondary btn-sm">Edit</button>
                  </div>
                </div>
              </div>

              <div class="col-md-4">
                <div class="border rounded p-3 h-100">
                  <div class="d-flex justify-content-between align-items-start">
                    <div>
                      <h6>Platinum</h6>
                      <div class="small-muted">Top-tier — concierge support</div>
                    </div>
                    <div class="text-end">
                      <div class="h5 mb-0">₹1,299</div>
                      <div class="small-muted">/ month</div>
                    </div>
                  </div>
                  <hr>
                  <ul class="small-muted">
                    <li>Dedicated support</li>
                    <li>Featured placement</li>
                  </ul>
                  <div class="mt-2 text-end">
                    <button class="btn btn-outline-secondary btn-sm">Edit</button>
                  </div>
                </div>
              </div>

            </div>

          </div>

        </div>

        <div class="col-lg-5">
          <div class="card shadow-sm p-3">
            <h5 class="mb-3">Analytics</h5>
            <canvas id="revenueChart" style="max-height:260px"></canvas>
            <div class="mt-3 d-flex justify-content-between small-muted">
              <div>Visitors <strong class="d-block">24,102</strong></div>
              <div>Registrations <strong class="d-block">1,402</strong></div>
              <div>Matches <strong class="d-block">8,412</strong></div>
            </div>
          </div>

          <!-- Reports -->
          <div class="card shadow-sm p-3 mt-3">
            <div class="d-flex justify-content-between align-items-center mb-2">
              <h6 class="mb-0">Reports & Complaints</h6>
              <button class="btn btn-sm btn-outline-danger">View All</button>
            </div>

            <ul class="list-group list-group-flush">
              <li class="list-group-item d-flex justify-content-between align-items-start">
                <div>
                  <div><strong>Fake profile reported</strong></div>
                  <div class="small-muted">User: priyanka@example.com — 3 reports</div>
                </div>
                <div class="text-end">
                  <button class="btn btn-sm btn-success me-1">Resolve</button>
                  <button class="btn btn-sm btn-outline-secondary">Details</button>
                </div>
              </li>

              <li class="list-group-item d-flex justify-content-between align-items-start">
                <div>
                  <div><strong>Abusive messages</strong></div>
                  <div class="small-muted">User: rohit2@example.com — 1 report</div>
                </div>
                <div class="text-end">
                  <button class="btn btn-sm btn-success me-1">Resolve</button>
                  <button class="btn btn-sm btn-outline-secondary">Details</button>
                </div>
              </li>
            </ul>

          </div>

        </div>
      </div>

      <!-- Content Management -->
      <div class="card shadow-sm p-3 mt-3" id="content">
        <div class="d-flex justify-content-between align-items-center mb-3">
          <h5 class="mb-0">Content Management</h5>
          <div>
            <button class="btn btn-outline-secondary btn-sm">Preview Site</button>
            <button class="btn btn-primary btn-sm">Publish</button>
          </div>
        </div>

        <div class="row g-3">
          <div class="col-md-6">
            <label class="form-label">Banner Image</label>
            <div class="d-flex gap-2 align-items-center">
              <input class="form-control form-control-sm" type="file" />
              <button class="btn btn-sm btn-outline-secondary">Upload</button>
            </div>
          </div>

          <div class="col-md-6">
            <label class="form-label">Homepage Headline</label>
            <input class="form-control form-control-sm" placeholder="Find your perfect match today" />
          </div>

          <div class="col-12 mt-2">
            <label class="form-label">Success Stories (editable)</label>
            <textarea class="form-control" rows="3">Raju &amp; Priya — Married in 2024. A beautiful story...</textarea>
          </div>
        </div>

        <div class="mt-3 text-end">
          <button class="btn btn-primary">Save Changes</button>
        </div>

      </div>

      <footer class="mt-4 text-center small-muted">© Shaadi Admin • Designed with ❤️</footer>

    </div>
  </div>
</body>
</html>


<script>
    // Sidebar toggle for mobile
    const toggleBtn = document.getElementById('toggleSidebar');
    const sidebar = document.getElementById('sidebar');
    const backdrop = document.getElementById('backdrop');
    if(toggleBtn){
      toggleBtn.addEventListener('click', ()=>{
        sidebar.classList.toggle('show');
        backdrop.classList.toggle('show');
      });
      backdrop.addEventListener('click', ()=>{
        sidebar.classList.remove('show');
        backdrop.classList.remove('show');
      });
    }

    // Sample Chart
    const ctx = document.getElementById('revenueChart');
    if(ctx){
      new Chart(ctx, {
        type: 'line',
        data: {
          labels: ['Jun','Jul','Aug','Sep','Oct','Nov'],
          datasets: [{
            label: 'Revenue (₹)',
            data: [45000, 52000, 61000, 74000, 88000, 124000],
            tension: 0.35,
            fill: true,
            backgroundColor: 'rgba(11,79,140,0.08)',
            borderColor: '#0b4f8c',
            pointRadius: 3
          }]
        },
        options: {responsive:true, plugins:{legend:{display:false}}}
      });
    }

    // Placeholder: Hook up actions (Approve/Reject) with real APIs in your backend
    document.querySelectorAll('.btn-success, .btn-danger').forEach(btn=>{
      btn.addEventListener('click', (e)=>{
        e.preventDefault();
        // visual feedback only
        btn.classList.add('disabled');
        setTimeout(()=>btn.classList.remove('disabled'), 800);
      })
    });
</script>