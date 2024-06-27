<%@page contentType="text/html" pageEncoding="UTF-8" %>

  <!DOCTYPE html>
  <html>

  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Administrator</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
      .offcanvas {
        width: 250px;
      }

 
    </style>
  </head>

  <body>
    <% String username=(String) request.getAttribute("session"); %>
      <!--<nav class="navbar navbar-expand-lg navbar-dark bg-success">
        <div class="container-fluid">
          <a class="navbar-brand d-flex align-items-center" href="#">
            <img src="https://via.placeholder.com/40x40" alt="User Profile" class="user-profile-image me-2">
            <span>
              <%=username%>
            </span>
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
            aria-controls="offcanvasNavbar">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="offcanvas offcanvas-start bg-success text-white" tabindex="-1" id="offcanvasNavbar"
            aria-labelledby="offcanvasNavbarLabel">
            <div class="offcanvas-header">
              <h5 class="offcanvas-title" id="offcanvasNavbarLabel">
                <span id="adminProfileName"></span>
                <small id="adminProfileRole"></small>
              </h5>
              <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"
                aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              <ul class="navbar-nav nav-pills flex-column">
                <li class="nav-item">
                  <a class="nav-link text-white" href="#" data-bs-toggle="collapse" data-bs-target="#usersCollapse"
                    aria-expanded="false" aria-controls="usersCollapse">Members</a>
                  <div class="collapse" id="usersCollapse">
                    <ul class="list-unstyled ms-3">
                      <li><a class="text-white" href="#" data-bs-toggle="modal" data-bs-target="#viewMembersModal">View
                          Members</a></li>
                      <li><a class="text-white" href="#" data-bs-toggle="modal" data-bs-target="#addMemberModal">Add
                          Member</a></li>
                      <li><a class="text-white" href="#" data-bs-toggle="modal"
                          data-bs-target="#deleteMemberModal">Delete
                          Member</a></li>
                    </ul>
                  </div>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-white" href="#" data-bs-toggle="collapse" data-bs-target="#sponsorsCollapse"
                    aria-expanded="false" aria-controls="sponsorsCollapse">Sponsors</a>
                  <div class="collapse" id="sponsorsCollapse">
                    <ul class="list-unstyled ms-3">
                      <li><a class="text-white" href="#" data-bs-toggle="modal" data-bs-target="#viewSponsorsModal">View
                          Sponsors</a></li>
                      <li><a class="text-white" href="#" data-bs-toggle="modal"
                          data-bs-target="#deleteSponsorModal">Remove
                          Sponsor</a></li>
                    </ul>
                  </div>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-white" href="#" data-bs-toggle="collapse" data-bs-target="#eventsCollapse"
                    aria-expanded="false" aria-controls="eventsCollapse">Events</a>
                  <div class="collapse" id="eventsCollapse">
                    <ul class="list-unstyled ms-3">
                      <li><a class="text-white" href="#" data-bs-toggle="modal" data-bs-target="#viewEventsModal">View
                          Events</a></li>
                      <li><a class="text-white" href="#" data-bs-toggle="modal" data-bs-target="#addEventModal">Add
                          Event</a></li>
                    </ul>
                  </div>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-white" href="#" data-bs-toggle="collapse" data-bs-target="#imagesCollapse"
                    aria-expanded="false" aria-controls="imagesCollapse">Images</a>
                  <div class="collapse" id="imagesCollapse">
                    <ul class="list-unstyled ms-3">
                      <li><a class="text-white" href="#" data-bs-toggle="modal" data-bs-target="#viewImagesModal">View
                          Images</a></li>
                      <li><a class="text-white" href="#" data-bs-toggle="modal"
                          data-bs-target="#uploadImageModal">Upload
                          Image</a></li>
                      <li><a class="text-white" href="#" data-bs-toggle="modal"
                          data-bs-target="#deleteImageModal">Delete
                          Image</a></li>
                    </ul>
                  </div>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-white" href="#" onclick="confirmLogout(event)">Logout</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </nav>-->
      <nav class="navbar navbar-success bg-success ">
        <div class="container-fluid">

          <a class="navbar-brand" href="#">
            <img class="ml-1" src="/images/tut_logo.png" alt="tut logo" width="400" height="80">
           
          </a>

          <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar"
            aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="offcanvas offcanvas-end text-bg-success" tabindex="-1" id="offcanvasDarkNavbar"
            aria-labelledby="offcanvasDarkNavbarLabel">
            <div class="offcanvas-header">
              <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Administrator</h5>
              <button type="button" class="btn-close btn-close-dark" data-bs-dismiss="offcanvas"
                aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                <li class="nav-item">
                  <a class="nav-link text-white" href="#" data-bs-toggle="collapse" data-bs-target="#usersCollapse"
                    aria-expanded="false" aria-controls="usersCollapse">Members</a>
                  <div class="collapse" id="usersCollapse">
                    <ul class="list-unstyled ms-3">
                      <ul class="list-unstyled ms-3">
                        <li><a class="text-white" href="#" data-bs-toggle="modal" data-bs-target="#viewMembersModal">View Members</a></li>
                              <li><a class="text-white" href="#" data-bs-toggle="modal" data-bs-target="#addMemberModal">Add Member</a></li>
                        <li><a class="text-white" href="#" data-bs-toggle="modal" data-bs-target="#deleteMemberModal">Delete Member</a></li>
                              </ul>
                  </div>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-white" href="#" data-bs-toggle="collapse" data-bs-target="#sponsorsCollapse"
                    aria-expanded="false" aria-controls="sponsorsCollapse">Sponsors</a>
                  <div class="collapse" id="sponsorsCollapse">
                    <ul class="list-unstyled ms-3">
                      <li><a class="text-white" href="./view_sponser" >View
                          Sponsors</a></li>
                      <li><a class="text-white" href="#" data-bs-toggle="modal"
                          data-bs-target="#deleteSponsorModal">Remove
                          Sponsor</a></li>
                    </ul>
                  </div>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-white" href="#" data-bs-toggle="collapse" data-bs-target="#eventsCollapse"
                    aria-expanded="false" aria-controls="eventsCollapse">Events</a>
                  <div class="collapse" id="eventsCollapse">
                    <ul class="list-unstyled ms-3">
                      <li><a class="text-white" href="#" data-bs-toggle="modal" data-bs-target="#viewEventsModal">View
                          Events</a></li>
                      <li><a class="text-white" href="#" data-bs-toggle="modal" data-bs-target="#addEventModal">Add
                          Event</a></li>
                    </ul>
                  </div>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-white" href="#" data-bs-toggle="collapse" data-bs-target="#imagesCollapse"
                    aria-expanded="false" aria-controls="imagesCollapse">Images</a>
                  <div class="collapse" id="imagesCollapse">
                    <ul class="list-unstyled ms-3">
                      <li><a class="text-white" href="#" data-bs-toggle="modal" data-bs-target="#viewImagesModal">View
                          Images</a></li>
                      <li><a class="text-white" href="#" data-bs-toggle="modal"
                          data-bs-target="#uploadImageModal">Upload
                          Image</a></li>
                      <li><a class="text-white" href="#" data-bs-toggle="modal"
                          data-bs-target="#deleteImageModal">Delete
                          Image</a></li>
                    </ul>
                  </div>
                </li>
                
                <li class="nav-item">
                  <a class="nav-link text-white" href="./Home.html" onclick="confirmLogout(event)">Logout</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </nav>


      <main class="container-fluid mt-3">
        <img src="/images/first one.jpg" class="d-block w-100" alt="...">
      </main>


      <!-- Add Member Modal  -->
      <div class="modal fade" id="addMemberModal" tabindex="-1" aria-labelledby="addMemberModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="addMemberModalLabel">Add Member</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <form action="/add_member" method="post" enctype="multipart/form-data" id="memberForm">
                <div class="mb-3">
                  <label for="memberName" class="form-label">First Name</label>
                  <input type="text" class="form-control" name="memberName" required>
                </div>
                <div class="mb-3">
                  <label for="memberSurname" class="form-label">Last Name</label>
                  <input type="text" class="form-control" name="memberSurname" required>
                </div>
                <div class="mb-3">
                  <label for="memberPosition" class="form-label">Position</label>
                  <input type="text" class="form-control" name="memberPosition" required>
                </div>
                <div class="mb-3">
                  <label for="memberImage" class="form-label">Member Image</label>
                  <input type="file" class="form-control" name="image" accept="image/*" required>
                </div>            <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                  <button type="submit" class="btn btn-primary" >Save Member</button>
                </div>

              </form>
            </div>

          </div>
        </div>
      </div>


      <!-- View Members Modal -->
      <div class="modal fade" id="viewMembersModal" tabindex="-1" aria-labelledby="viewMembersModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="viewMembersModalLabel">View Members</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <div class="row" id="memberList"></div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </div>

      <!-- Delete Member Modal -->
      <div class="modal fade" id="deleteMemberModal" tabindex="-1" aria-labelledby="deleteMemberModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="deleteMemberModalLabel">Delete Member</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <p>Select a member to delete:</p>
              <select class="form-select" id="memberSelect">
                <!-- Options for members will be dynamically populated here -->
              </select>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
              <button type="button" class="btn btn-danger" id="deleteMemberBtn">Delete</button>
            </div>
          </div>
        </div>
      </div>

      <!--=========================================EVENTS===================================================================================== -->


      <!-- View Events Modal -->
      <div class="modal fade" id="viewEventsModal" tabindex="-1" aria-labelledby="viewEventsModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="viewEventsModalLabel">View Events</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <div id="viewEventsContainer"></div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </div>

      <!-- Add Event Modal -->
      <div class="modal fade" id="addEventModal" tabindex="-1" aria-labelledby="addEventModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="addEventModalLabel">Add Event</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <form action="/event" method="post">
                <div class="mb-3">
                  <label for="eventName" class="form-label">Event Name</label>
                  <input type="text" class="form-control" name="eventName" required>
                </div>
                <div class="mb-3">
                  <label for="eventDate" class="form-label">Event Date</label>
                  <input type="date" class="form-control" name="eventDate" required>
                </div>
                <div class="mb-3">
                  <label for="eventDescription" class="form-label">Event Description</label>
                  <textarea class="form-control" name="eventDescription" rows="3" required></textarea>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                  <button type="submit" class="btn btn-primary">Save Event</button>
                </div>
              </form>
            </div>

          </div>
        </div>
      </div>


      <!-- Delete Event Modal -->
      <div class="modal fade" id="deleteEventModal" tabindex="-1" aria-labelledby="deleteEventModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="deleteEventModalLabel">Delete Event</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <p>Are you sure you want to delete this event?</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
              <button type="button" class="btn btn-danger" id="deleteEventBtn">Delete Event</button>
            </div>
          </div>
        </div>
      </div>

      <!--=========================================SPONSERS===================================================================================== -->

      <!-- Sponsors Modal -->
      <div class="modal fade" id="viewSponsorsModal" tabindex="-1" aria-labelledby="viewSponsorsModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="viewSponsorsModalLabel">View Sponsors</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <div class="row">
                <div class="col-md-6">
                  <h4>Sponsors List</h4>
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th>Name</th>
                        <th>Contribution</th>
                      </tr>
                    </thead>
                    <tbody id="sponsorsTableBody">
                      <!-- Sponsor data will be added here -->
                    </tbody>
                  </table>
                </div>
                <div class="col-md-6">
                  <h4>Sponsors Contribution</h4>
                  <canvas id="sponsorsPieChart"></canvas>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </div>


      <!-- Delete Sponsor Modal -->
      <div class="modal fade" id="deleteSponsorModal" tabindex="-1" aria-labelledby="deleteSponsorModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="deleteSponsorModalLabel">Delete Sponsor</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <p>Select a sponsor to delete:</p>
              <select class="form-select" id="sponsorSelect">
                <!-- Options for sponsors will be dynamically populated here -->
              </select>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
              <button type="button" class="btn btn-danger" id="deleteSponsorBtn">Delete</button>
            </div>
          </div>
        </div>
      </div>

      <!--=========================================IMAGES===================================================================================== -->

      <!-- View Images Modal -->
      <div class="modal fade" id="viewImagesModal" tabindex="-1" aria-labelledby="viewImagesModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-xl">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="viewImagesModalLabel">View Images</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <div class="row" id="imageGallery">
                <!-- Image thumbnails will be dynamically rendered here -->
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </div>


      <!-- Upload Image Modal -->
      <div class="modal fade" id="uploadImageModal" tabindex="-1" aria-labelledby="uploadImageModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="uploadImageModalLabel">Upload Image</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <form action="/add_photo" method="post" id="imageUploadForm" enctype="multipart/form-data">
                <div class="mb-3">
                  <label for="imageTitle" class="form-label">Image Title</label>
                  <input type="text" class="form-control" id="imageTitle" name="title" required>
                </div>
                <div class="mb-3">
                  <label for="imageDescription" class="form-label">Image Description</label>
                  <textarea class="form-control" name="desc" id="imageDescription" rows="3" required></textarea>
                </div>
                <div class="mb-3">
                  <label for="imageFile" class="form-label">Image File</label>
                  <input type="file" class="form-control" id="imageFile" accept="image/*" name="image" required>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                  <button type="submit" class="btn btn-primary" id="uploadImageBtn">Upload Image</button>
                </div>
              </form>
            </div>
           
          </div>
        </div>
      </div>




      <!-- Delete Image Modal -->
      <div class="modal fade" id="deleteImageModal" tabindex="-1" aria-labelledby="deleteImageModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="deleteImageModalLabel">Delete Image</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <p>Are you sure you want to delete this image?</p>
              <img id="imageToDelete" src="" alt="Image to Delete" class="img-fluid mb-3">
              <div>
                <strong>Title:</strong> <span id="imageTitle"></span>
              </div>
              <div>
                <strong>Description:</strong> <span id="imageDescription"></span>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
              <button type="button" class="btn btn-danger" id="deleteImageBtn">Delete</button>
            </div>
          </div>
        </div>
      </div>

      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

      <script>

        const members = []; // Array to store added members
        const events = []; // Array to store added events
        const photos = []; // Array to store uploaded photos

        // Sample admin profile data
        const currentAdmin = {
          name: 'John Doe',
          role: 'Administrator'
        };


        // Display admin profile information
        const adminProfileNameElements = document.querySelectorAll('#adminProfileName');
        adminProfileNameElements.forEach(element => {
          element.textContent = currentAdmin.name;
        });
        document.getElementById('adminProfileRole').textContent = currentAdmin.role;


        // Add member ID to each member object
        let nextMemberId = 1;
        members.forEach(member => {
          member.id = nextMemberId++;
        });

        // Add event handler for the Save Member button
        const saveMemberBtn = document.getElementById('saveMemberBtn');
        const memberForm = document.getElementById('memberForm');

        saveMemberBtn.addEventListener('click', function (event) {
          event.preventDefault(); // Prevent default form submission

          const memberName = document.getElementById('memberName').value;
          const memberSurname = document.getElementById('memberSurname').value;
          const memberPosition = document.getElementById('memberPosition').value;
          const memberImage = document.getElementById('memberImage')[0].files[0];

          // Convert the image file to a base64-encoded string
          const reader = new FileReader();
          reader.readAsDataURL(memberImage);
          reader.onload = () => {
            const newMember = {
              id: nextMemberId++, // Assign a unique ID to the new member
              name: memberName,
              surname: memberSurname,
              position: memberPosition,
              imageData: reader.result // Store the base64-encoded string
            };

            // Add the new member to the members array
            members.push(newMember);

            // Reset the form fields
            memberForm.reset();

            // Close the modal
            addMemberModal.hide();

            // Update the member list in the View Members modal
            displayMemberList();
          };
        });

        // Function to display the member list
        function displayMemberList() {
          const memberList = document.getElementById('memberList');
          memberList.innerHTML = ''; // Clear previous content

          members.forEach(function (member) {
            const memberCard = document.createElement('div');
            memberCard.classList.add('col-md-4', 'mb-3');
            memberCard.innerHTML = `
	         <div class="card">
	           <img src="${member.imageData}" class="card-img-top" alt="${member.name} ${member.surname}">
	           <div class="card-body">
	             <h5 class="card-title">${member.name} ${member.surname}</h5>
	             <p class="card-text">${member.position}</p>
	           </div>
	         </div>
	       `;

            memberList.appendChild(memberCard);
          });
        }

        // Function to populate the member select options
        function populateMemberSelect() {
          const memberSelect = document.getElementById('memberSelect');
          memberSelect.options.length = 0; // Clear existing options

          members.forEach(member => {
            const option = document.createElement('option');
            option.value = member.id;
            option.text = `${member.name} ${member.surname} (${member.position})`;
            memberSelect.add(option);
          });
        }

        // Function to handle the delete member button click
        function handleDeleteMember() {
          const memberSelect = document.getElementById('memberSelect');
          const selectedMemberId = parseInt(memberSelect.value);
          const selectedMemberName = memberSelect.options[memberSelect.selectedIndex].text;

          if (confirm(`Are you sure you want to delete ${selectedMemberName}?`)) {
            // Remove the selected member from the members array
            const updatedMembers = members.filter(member => member.id !== selectedMemberId);
            members.length = 0; // Clear the members array
            members.push(...updatedMembers); // Add the updated members back to the array

            // Reset the member select and close the modal
            populateMemberSelect();
            const deleteMemberModal = bootstrap.Modal.getInstance('#deleteMemberModal');
            deleteMemberModal.hide();

            // Update the member list in the View Members modal
            displayMemberList();
          }
        }

        // Add event listeners
        document.getElementById('deleteMemberBtn').addEventListener('click', handleDeleteMember);

        // Add event handler for the View Members modal
        const viewMembersModal = document.getElementById('viewMembersModal');
        viewMembersModal.addEventListener('shown.bs.modal', function () {
          displayMemberList();
          populateMemberSelect(); // Populate the member select options
        });

        // Add event handler for the Add Member modal
        const addMemberModal = document.getElementById('addMemberModal');
        addMemberModal.addEventListener('shown.bs.modal', function () {
          populateMemberSelect(); // Populate the member select options
        });



        //===============================================EVENT==========================================================================				   				   


        // Add event handler for the Save Event button
        const saveEventBtn = document.getElementById('saveEventBtn');
        const eventForm = document.getElementById('eventForm');

        saveEventBtn.addEventListener('click', function (event) {
          event.preventDefault(); // Prevent default form submission

          const eventName = document.getElementById('eventName').value;
          const eventDate = document.getElementById('eventDate').value;
          const eventDescription = document.getElementById('eventDescription').value;

          // Create an event object
          const newEvent = {
            name: eventName,
            date: eventDate,
            description: eventDescription
          };

          // Add the new event to the events array
          events.push(newEvent);

          // Reset the form fields
          eventForm.reset()

          // Close the modal
          const modal = bootstrap.Modal.getInstance('#addEventModal');
          modal.hide();

          // Update the event list in the View Events modal
          displayEventList();

        });

        // Add event handler for the Delete Event button
        const deleteEventModal = document.getElementById('deleteEventModal');
        const deleteEventBtn = deleteEventModal.querySelector('#deleteEventBtn');

        deleteEventBtn.addEventListener('click', function () {
          // Get the selected event index from the modal data attribute
          const selectedEventIndex = parseInt(deleteEventModal.dataset.eventIndex);

          // Remove the selected event from the events array
          events.splice(selectedEventIndex, 1);

          // Close the delete event modal
          const deleteModal = bootstrap.Modal.getInstance(deleteEventModal);
          deleteModal.hide();

          // Update the event list in the View Events modal
          displayEventList();
        });

        // Function to open the delete event modal
        function openDeleteEventModal(index) {
          const deleteEventModal = document.getElementById('deleteEventModal');
          const deleteEventModalBody = deleteEventModal.querySelector('.modal-body');

          // Get the selected event details
          const selectedEvent = events[index];

          // Populate the modal body with the selected event details
          deleteEventModalBody.innerHTML = `
	      <p>Are you sure you want to delete the following event?</p>
	      <ul>
	        <li><strong>Event Name:</strong> ${selectedEvent.name}</li>
	        <li><strong>Event Date:</strong> ${selectedEvent.date}</li>
	        <li><strong>Event Description:</strong> ${selectedEvent.description}</li>
	      </ul>
	    `;

          // Set the selected event index in the modal data attribute
          deleteEventModal.dataset.eventIndex = index;

          // Show the delete event modal
          const deleteModal = new bootstrap.Modal(deleteEventModal);
          deleteModal.show();
        }

        // Modify the displayEventList function to add a delete button for each event
        function displayEventList() {
          const viewEventsContainer = document.getElementById('viewEventsContainer');
          viewEventsContainer.innerHTML = ''; // Clear previous content

          events.forEach(function (event, index) {
            const eventCard = document.createElement('div');
            eventCard.classList.add('card', 'mb-3');

            const eventCardBody = document.createElement('div');
            eventCardBody.classList.add('card-body');

            const eventTitle = document.createElement('h5');
            eventTitle.classList.add('card-title');
            eventTitle.textContent = event.name;

            const eventDateElement = document.createElement('p');
            eventDateElement.classList.add('card-text');
            eventDateElement.textContent = `Date: ${event.date}`;

            const eventDescriptionElement = document.createElement('p');
            eventDescriptionElement.classList.add('card-text');
            eventDescriptionElement.textContent = event.description;

            const deleteBtn = document.createElement('button');
            deleteBtn.classList.add('btn', 'btn-danger');
            deleteBtn.textContent = 'Delete';
            deleteBtn.addEventListener('click', function () {
              openDeleteEventModal(index);
            });

            eventCardBody.appendChild(eventTitle);
            eventCardBody.appendChild(eventDateElement);
            eventCardBody.appendChild(eventDescriptionElement);
            eventCardBody.appendChild(deleteBtn);

            eventCard.appendChild(eventCardBody);

            viewEventsContainer.appendChild(eventCard);
          });
        }



        //===============================================SPONSER==========================================================================	  


        // Sample sponsor data
        const sponsors = [
          { id: 1, name: 'Sponsor A', contribution: 10000 },
          { id: 2, name: 'Sponsor B', contribution: 5000 },
          { id: 3, name: 'Sponsor C', contribution: 8000 },
          { id: 4, name: 'Sponsor D', contribution: 12000 },
          { id: 5, name: 'Sponsor E', contribution: 7000 }
        ];

        // Function to populate the sponsor select options
        function populateSponsorSelect() {
          const sponsorSelect = document.getElementById('sponsorSelect');
          sponsorSelect.options.length = 0; // Clear existing options

          sponsors.forEach(sponsor => {
            const option = document.createElement('option');
            option.value = sponsor.id;
            option.text = `${sponsor.name} (Contribution: $${sponsor.contribution.toLocaleString()})`;
            sponsorSelect.add(option);
          });
        }

        // Function to handle the delete sponsor button click
        function handleDeleteSponsor() {
          const sponsorSelect = document.getElementById('sponsorSelect');
          const selectedSponsorId = parseInt(sponsorSelect.value);
          const selectedSponsorName = sponsorSelect.options[sponsorSelect.selectedIndex].text;

          if (confirm(`Are you sure you want to delete ${selectedSponsorName}?`)) {
            // Remove the selected sponsor from the sponsors array
            const updatedSponsors = sponsors.filter(sponsor => sponsor.id !== selectedSponsorId);
            sponsors.length = 0; // Clear the sponsors array
            sponsors.push(...updatedSponsors); // Add the updated sponsors back to the array

            // Reset the sponsor select and close the modal
            populateSponsorSelect();
            const deleteSponsorModal = bootstrap.Modal.getInstance('#deleteSponsorModal');
            deleteSponsorModal.hide();

            // Update the sponsors list and chart
            updateSponsorsTable();
            updateSponsorsChart();
          }
        }

        // Function to update the sponsors table
        function updateSponsorsTable() {
          const sponsorsTableBody = document.getElementById('sponsorsTableBody');
          sponsorsTableBody.innerHTML = ''; // Clear previous data

          // Populate the sponsors table
          sponsors.forEach(function (sponsor) {
            const row = document.createElement('tr');
            const nameCell = document.createElement('td');
            nameCell.textContent = sponsor.name;
            const contributionCell = document.createElement('td');
            contributionCell.textContent = `$${sponsor.contribution.toLocaleString()}`;
            row.appendChild(nameCell);
            row.appendChild(contributionCell);
            sponsorsTableBody.appendChild(row);
          });
        }

        // Function to update the sponsors pie chart
        function updateSponsorsChart() {
          const sponsorsPieChart = document.getElementById('sponsorsPieChart').getContext('2d');
          const pieChartData = {
            labels: sponsors.map(sponsor => sponsor.name),
            datasets: [
              {
                data: sponsors.map(sponsor => sponsor.contribution),
                backgroundColor: [
                  '#FF6384',
                  '#36A2EB',
                  '#FFCE56',
                  '#4BC0C0',
                  '#9966FF'
                ]
              }
            ]
          };
          new Chart(sponsorsPieChart, {
            type: 'pie',
            data: pieChartData
          });
        }

        // Add event listener for the delete sponsor button
        document.getElementById('deleteSponsorBtn').addEventListener('click', handleDeleteSponsor);

        // Add event handler for the View Sponsors modal
        const viewSponsorsModal = document.getElementById('viewSponsorsModal');
        viewSponsorsModal.addEventListener('shown.bs.modal', function () {
          updateSponsorsTable();
          updateSponsorsChart();
          populateSponsorSelect(); // Populate the sponsor select options
        });


        //===============================================IMAGES==========================================================================	 

        const imageGallery = document.getElementById('imageGallery');
        const uploadBtn = document.getElementById('uploadImageBtn');
        const uploadForm = document.getElementById('uploadImageForm');
        let images = [];

        //render image thumbnails in the gallery

        function renderImageThumbnails() {
          imageGallery.innerHTML = '';
          images.forEach((image, index) => {
            const thumbnailCol = document.createElement('div');
            thumbnailCol.className = 'col-md-4 mb-3';
            thumbnailCol.innerHTML = `
	          <div class="card">
	            <img src="${image.url}" class="card-img-top" alt="${image.title}">
	            <div class="card-body">
	              <h5 class="card-title">${image.title}</h5>
	              <p class="card-text">${image.description}</p>
	              <button class="btn btn-danger btn-sm" onclick="deleteImage(${index})">Delete</button>
	            </div>
	          </div>
	        `;
            imageGallery.appendChild(thumbnailCol);
          });
        }

        uploadBtn.addEventListener('click', event => {
          event.preventDefault();

          const title = document.getElementById('imageTitle').value;
          const description = document.getElementById('imageDescription').value;
          const imageFile = document.getElementById('imageFile').files[0];

          if (imageFile) {
            const reader = new FileReader();
            reader.onload = () => {
              const imageData = {
                title,
                description,
                url: reader.result,
              };
              images.push(imageData);
              renderImageThumbnails();
              uploadForm.reset();
            };
            reader.readAsDataURL(imageFile);
          }
        });


        //===============================================LOG OUT==========================================================================						

        // Confirm logout function
        function confirmLogout(event) {
          event.preventDefault(); // Prevent the default link behavior

          const confirmed = confirm("Are you sure you want to log out?");
          if (confirmed) {
            logout();
          }
        }


        function logout() {
          // Implement your logout logic here
          // For example, you can clear the user session, redirect to the login page, etc.
          //console.log('Logout clicked');
          window.location.href = 'Home.html'; // Redirect to the login page
        }

      </script>
  </body>

  </html>