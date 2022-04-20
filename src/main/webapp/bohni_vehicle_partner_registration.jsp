<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Bohni - Advertising is about to Change</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">        
  <link rel="icon" href="webasset/img/favicon.png" type="image/x-icon" /> 
  <link rel="stylesheet" href="webasset/font-awesome-4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="plugins/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="new-dashboard/assets/css/demo_2/style.css" />
  <link rel="stylesheet" type="text/css" href="webasset/css/driver-registration.css">
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
  <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

<div class="card-holder">
<div class="card">

<div class="row pb-5">
  <div class="col-md-3 col-xs-12">
    <img id="bohnilogo" src="webasset/img/logo2.png">
  </div>
  <!-- <div class="col-md-6 col-xs-12">
  @if(session()->has('success'))
  <div class="alert alert-success text-center">{{session()->get('success</div>
  @elseif(session()->has('failure'))
  <div class="alert alert-danger text-center">{{session()->get('failure</div>
  @endif
  </div> -->
  <div class="col-md-3 col-xs-12">
    <a href="/driver-login" class="btn logout-btn float-right"> Logout</a>
  </div>
</div>


<div class="">
<div class="row">
<div class="col-12 col-md-12">
<div class="">

<div class="row">
  <div class="col-12 col-sm-10">
    <h2>Vehicle Partner Registration</h2>    
  </div>
  <div class="col-12 col-sm-2">
    <button type="button" class="btn btn-success btn-sm float-right" data-toggle="modal" data-target="#AddVehicles"><i class="fa fa-plus"></i> Add Vehicles</button>
  </div>
</div>


<!-- Modal -->
<div class="modal fade" id="AddVehicles" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">

      <form action="/add_vehicle" class="frmBx" method="post" enctype="multipart/form-data" autocomplete="off">
      <input type="hidden" name="_token" value="{{ csrf_token() }}">

      <input type="hidden" name="driver_id" value="{{$Driver['driver']['id']}}">


      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Vehicles</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div> 
      <div class="modal-body">

        <div class="row">
          <div class="col-12">
            <div class="form-group">
              <label>Vehicle Number</label>
              <input type="text" class="custom-input" name="vehicle_name" id="vehicle_no" placeholder="Vehicle Number">
              </div>      
          </div>
          <div class="col-12"> 
            <div class="form-group" >
            <label>Start Location</label>
            <br>
            <select id="selectStartLocation" name="start_location[]" class="custom-input" multiple="multiple" style="width: 100%;" required>
              @foreach($City['city'] as $city)             
                  <option value="{{$city['city']}}">{{$city['city']}}</option>
              @endforeach
            </select>
            </div>
          </div>


          <div class="col-12"> 
            <div class="form-group" >
            <label>Delivery Location</label>
            <br>
            <select id="selectEndLocation" name="end_location[]" class="custom-input" multiple="multiple" style="width: 100%;" required>
              @foreach($City['city'] as $city)             
                  <option value="{{$city['city']}}">{{$city['city']}}</option>
              @endforeach
            </select>
          </div>
          </div>

          <div class="col-12">
            <div class="form-group">
            <label>E-commerce</label>

            <select id="ecommerce_platform" name="ecommerce_platform[]" class="custom-input" multiple="multiple" style="width: 100%;" required>

              @foreach($Ecom['ecommerce'] as $ecommerce)             
                  <option value="{{$ecommerce['ecommerce']}}">{{$ecommerce['ecommerce']}}</option>
              @endforeach

            </select>
            </div>
          </div>

           <div class="col-12">
            <label>RC Book</label>
            <div class="custom-file">
            <input type="file" class="custom-file-input" id="rc_book" name="rc_book" required>
            <label class="custom-file-label" for="file">Choose file</label>
            </div>
          </div>

          <div class="col-12">
            <label class="pt-2">Shift</label>
            <br>
            <label class="checkbox-inline"><input id="shift" name="shift[]" type="checkbox" value="Morning"> Morning</label>&nbsp;&nbsp;&nbsp;
            <label class="checkbox-inline"><input id="shift2" name="shift[]" type="checkbox" value="Afternoon"> Afternoon</label>&nbsp;&nbsp;&nbsp;
            <label class="checkbox-inline"><input id="shift3" name="shift[]" type="checkbox" value="Evening"> Evening</label>
          </div> 

          </div>
        </div>
        
      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-success">Save changes</button>
      </div>

    </form>

    </div>
  </div>
</div>




<!-- <p>If you already register, click <a href="/driver-login">here</a> to login</p> -->


<div class="form-area pt-2">

<form action="/update_driver" class="frmBx" method="post" enctype="multipart/form-data" autocomplete="off">
<input type="hidden" name="_token" value="{{ csrf_token() }}">

<input type="hidden" name="driver_id" value="{{$Driver['driver']['id']}}">

<h5 class="mb-4">Personal Information:</h5>

<div class="row">
  <div class="col-12 col-md-4">
    <div class="form-group">
    <label>Owner Name</label>
    <input type="text" class="custom-input" name="owner_name" placeholder="Name" value="{{$Driver['driver']['owner_name']}}">
    </div>      
  </div>
  <div class="col-12 col-md-4">
    <div class="form-group">
    <label>Phone Number</label>
    <input type="number" name="phone_no" class="custom-input" placeholder="Phone Number" value="{{$Driver['driver']['phone_no']}}">
    </div>
  </div>
  <div class="col-12 col-md-4">
    <div class="form-group">
    <label>Email Address</label>
    <input type="email" name="email_address" class="custom-input" placeholder="name@example.com" value="{{$Driver['driver']['email_address']}}"> 
    </div>
  </div>                            
</div>

<div class="row">
  <div class="col-12 col-md-4">
    <div class="form-group">
    <label>Company Name</label>
    <input type="text" name="company_name" class="custom-input" placeholder="Company Name" value="{{$Driver['driver']['company_name']}}">
    </div>
  </div>                            

  <div class="col-12 col-md-4">
    <div class="form-group">
    <label>Company Contact Person</label>
    <input type="text" name="company_contact_person" class="custom-input" placeholder="Company Contact Person" value="{{$Driver['driver']['company_contact_person']}}">
    </div>
  </div>                            

  <div class="col-12 col-md-4">
    <div class="form-group">
    <label>Contact Person Contact</label>
    <input type="text" name="company_address" class="custom-input" placeholder="Contact Person Contact" value="{{$Driver['driver']['company_address']}}">
    </div>
  </div>
</div>                            



<h5 class="mb-4">Bank Details:</h5>
<div class="row">

<div class="col-12 col-md-4">
<div class="form-group">
<label>Bank Name</label>
<input type="text" class="custom-input" name="bank_name" placeholder="Bank Name" value="{{$Driver['driver']['bank_name']}}">
</div>      
</div>
<div class="col-12 col-md-4">
<div class="form-group">
<label>A/C Holder Name</label>
<input type="text" name="acc_holder_name" class="custom-input" placeholder="A/C Holder Name" value="{{$Driver['driver']['acc_holder_name']}}">
</div>
</div>

<div class="col-12 col-md-4">
<div class="form-group">
<label>Account Type</label>
<select class="custom-input" name="account_type" >

  <option>Select Account Type</option>
  @if($Driver['driver']['account_type'] == 'Saving')
  <option selected>Saving</option>
  <option>Current</option>
  <option>Fixed</option>
  @elseif($Driver['driver']['account_type'] == 'Current')
  <option >Saving</option>
  <option selected>Current</option>
  <option>Fixed</option>
  @elseif($Driver['driver']['account_type'] == 'Fixed')
  <option >Saving</option>
  <option >Current</option>
  <option selected>Fixed</option>
  @else
  <option >Saving</option>
  <option >Current</option>
  <option >Fixed</option>
  @endif

</select>
</div>
</div>
 
<div class="col-12 col-md-4">
<div class="form-group">
<label>Account Number</label>
<input type="number" name="account_number" class="custom-input" placeholder="Account Number" value="{{$Driver['driver']['account_number']}}">
</div>
</div>
<div class="col-12 col-md-4">
<div class="form-group">
<label>IFSC Code</label>
<input type="text" name="ifsc_code" class="custom-input" placeholder="IFSC Code" value="{{$Driver['driver']['ifsc_code']}}">
</div>
</div>                          
</div>

<h5 class="mb-4">Documents:</h5>
<div class="row">

<div class="col-12 col-md-4">
<label>Aadhar Card</label>

<div class="custom-file">
<input type="hidden" name="old_aadhar_card" value="{{$Driver['driver']['aadhar_card']}}">
<input type="file" class="custom-file-input" id="inputGroupFile03" name="aadhar_card">
<label class="custom-file-label" for="inputGroupFile03">Choose file</label>
</div>

</div>
<div class="col-12 col-md-4">
<label>Pan Card</label>

<div class="custom-file">
<input type="hidden" name="old_pan_card" value="{{$Driver['driver']['pan_card']}}">
<input type="file" class="custom-file-input" id="inputGroupFile04" name="pan_card" value="{{$Driver['driver']['pan_card']}}">
<label class="custom-file-label" for="inputGroupFile04">Choose file</label>
</div>
</div>

</div>
<br>

<br>

<button type="submit" class="btn btn-block btn-register">Register</button>

</form>

</div>







  <div class="table-responsive mt-4"> 
    
    <table class="table">
      <thead class="thead-dark">
      <tr>
      <th scope="col">#</th>
      <th scope="col">Vehicle Number</th>
      <th scope="col">Start Location</th>
      <th scope="col">Delivery Location</th>
      <th scope="col">Ecommerce platform</th>
      <th scope="col">Shift</th>
      <th scope="col">Action</th>
      </tr>
      </thead>
      <tbody>

      @php $count = 1; @endphp
      @foreach($Vehicle['vehicles'] as $value)
      <tr>
        <th scope="row">{{$count}}</th>
        <td>{{$value['vehicle_name']}}</td>
        <td>{{$value['start_location']}}</td>
        <td>{{$value['end_location']}}</td>
        <td>{{$value['ecommerce_platform']}}</td>
        <td>{{$value['shift']}}</td>
        <td> <a href="#" class="edit-btn" onclick="" data-toggle="modal" data-target="#UpdateVehicles{{$count}}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>

            <a href="/deleteVehicle/{{$value['id']}}" class="edit-btn"><i class="fa fa-trash" aria-hidden="true"></i></a>
        </td>
      </tr>


  <div class="modal fade" id="UpdateVehicles{{$count}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">

      <form action="/update_vehicle" class="frmBx" method="post" enctype="multipart/form-data" autocomplete="off">
      <input type="hidden" name="_token" value="{{ csrf_token() }}">

      <input type="hidden" name="id" value="{{$value['id']}}">
      <input type="hidden" name="driver_id" value="{{$value['driver_id']}}">


      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel1">Update Vehicles</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div> 
      <div class="modal-body">

        <div class="row">
          <div class="col-12">
            <div class="form-group">
              <label>Vehicle Number</label>
              <input type="text" class="custom-input" name="vehicle_name" id="vehicle_no" placeholder="Vehicle Number" value="{{$value['vehicle_name']}}">
              </div>      
          </div>


          <div class="col-12"> 
            <div class="form-group" >
            <label>Start Location</label>
            <br>
            <select id="EditselectStartLocation{{$count}}" name="start_location[]" class="custom-input" multiple="multiple" style="width: 100%;" required>

              @foreach($City['city'] as $city)

                @if(str_contains($value['start_location'], $city['city']))
                  <option value="{{$city['city']}}" selected>{{$city['city']}}</option>
                @else
                  <option value="{{$city['city']}}">{{$city['city']}}</option>
                @endif
              
              @endforeach

            </select>
            </div>
          </div>


          <div class="col-12"> 
            <div class="form-group" >
            <label>Delivery Location</label>
            <br>
            <select id="EditselectEndLocation{{$count}}" name="end_location[]" class="custom-input" multiple="multiple" style="width: 100%;" required>

            @foreach($City['city'] as $city)

              @if(str_contains($value['end_location'], $city['city']))
                <option value="{{$city['city']}}" selected>{{$city['city']}}</option>
              @else
                <option value="{{$city['city']}}">{{$city['city']}}</option>
              @endif
            @endforeach

         
            </select>
          </div>
          </div>

          <div class="col-12">
            <div class="form-group">
            <label>E-commerce</label>

            <select id="Editecommerce_platform{{$count}}" name="ecommerce_platform[]" class="custom-input" multiple="multiple" style="width: 100%;" required>

            @foreach($Ecom['ecommerce'] as $ecommerce)   

              @if(str_contains($value['ecommerce_platform'], $ecommerce['ecommerce']))
                <option value="{{$ecommerce['ecommerce']}}" selected>{{$ecommerce['ecommerce']}}</option>
              @else
                <option value="{{$ecommerce['ecommerce']}}">{{$ecommerce['ecommerce']}}</option>
              @endif          
            @endforeach

            </select>
            </div>
          </div>

           <div class="col-12">
            <label>RC Book</label>
            <div class="custom-file">
              
            <input type="hidden" class="custom-file-input" name="old_rc_book" value="{{$value['rc_book']}}">
            <input type="file" class="custom-file-input" id="rc_book" name="rc_book">
            <label class="custom-file-label" for="file">Choose file</label>
            </div>
          </div>

          <div class="col-12">
            <label class="pt-2">Shift</label>
            <br>

           

            @if(str_contains($value['shift'], 'Morning'))
              <label class="checkbox-inline"><input id="shift" name="shift[]" type="checkbox" value="Morning" checked> Morning</label>&nbsp;&nbsp;&nbsp;
            @else
            <label class="checkbox-inline"><input id="shift" name="shift[]" type="checkbox" value="Morning"> Morning</label>&nbsp;&nbsp;&nbsp;
            @endif

            @if(str_contains($value['shift'], 'Afternoon'))
              <label class="checkbox-inline"><input id="shift2" name="shift[]" type="checkbox" value="Afternoon" checked> Afternoon</label>&nbsp;&nbsp;&nbsp;
            @else
              <label class="checkbox-inline"><input id="shift2" name="shift[]" type="checkbox" value="Afternoon"> Afternoon</label>&nbsp;&nbsp;&nbsp;
            @endif

            @if(str_contains($value['shift'], 'Evening'))
              <label class="checkbox-inline"><input id="shift3" name="shift[]" type="checkbox" value="Evening" checked> Evening</label>
            @else
              <label class="checkbox-inline"><input id="shift3" name="shift[]" type="checkbox" value="Evening"> Evening</label>
            @endif

          </div> 

          </div>
        </div>
        
      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-success">Save changes</button>
      </div>

    </form>

    </div>
  </div>
</div>


        @php $count++; @endphp
      @endforeach
      
      </tbody>
    </table>


  </div>




</div>
</div>
</div>

</div>
</div>


<div>


<script type="text/javascript">
$("#selectEndLocation").select2({
  tags: true,
  tokenSeparators: [',', ' ']
})
$("#selectStartLocation").select2({
  tags: true,
  tokenSeparators: [',', ' ']
})
$("#ecommerce_platform").select2({
  tags: true,
  tokenSeparators: [',', ' ']
})

for (let i = 1; i < 25; i++) {
  $("#EditselectEndLocation"+i).select2({
  tags: true,
  tokenSeparators: [',', ' ']
  })
  $("#EditselectStartLocation"+i).select2({
  tags: true,
  tokenSeparators: [',', ' ']
  })
  $("#Editecommerce_platform"+i).select2({
  tags: true,
  tokenSeparators: [',', ' ']
  })
}


</script>


</body>


</html>



