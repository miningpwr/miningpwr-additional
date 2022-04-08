@extends($activeTemplate . 'user.layouts.app')

@section('panel')

        <div class="row account-row align-items-center justify-content-center">
                <div class="col-lg-8 card">
                    <div class="account-form-area m-2 mt-5">

                        <form class="account-form" method="post" action="{{route('user.register')}}" onsubmit="return submitUserForm();">
                            @csrf
                            <div class="row ml-b-20">
                                
                                    <div class="form-group col-lg-6">
                                        <label>@lang('Referrer')*</label>
                                        @if(request()->get('username'))
                                            <input type="text" name="show" class="form--control referral" value="{{ auth()->user()->username}} " placeholder="@lang('Enter referral username')*" required readonly>
                                            <input type="hidden" name="referral" value="{{ request()->get('username') }} " required readonly>
                                        @else
                                            <input type="text" name="referral" class="form--control referral" value="{{ auth()->user()->username}}" placeholder="@lang('Enter referral username')*" required readonly>
                                        @endif
                                    </div>

                                    <div class="form-group col-lg-6">
                                        <label>@lang('Position')*</label>
                                        <select class="position form--control" id="position" name="position" required @if(request()->get('position')) readonly @endif>
                                            <option value="">@lang('Select position')*</option>
                                            @foreach(mlmPositions() as $k=> $v)
                                                <option value="{{$k}}" @if(request()->get('position') == $v) selected @endif >@lang($v)</option>
                                            @endforeach
                                        </select>
                                    </div>

                                <div class="form-group col-lg-6">
                                    <label>@lang('First Name')*</label>
                                    <input type="text" class="form--control" name="firstname" value="{{old('firstname')}}" autocomplete="off" required>
                                </div>

                                <div class="form-group col-lg-6">
                                    <label>@lang('Last Name')*</label>
                                    <input type="text" class="form--control" name="lastname" value="{{old('lastname')}}" required>
                                </div>

                                <div class="form-group col-lg-6">
                                    <label>@lang('Email')*</label>
                                    <input type="email" class="form--control" name="email" value="{{old('email')}}" required>
                                </div>


                                <div class="form-group col-lg-6">
                                    <label>@lang('Country')</label>
                                        <select name="country" id="country" class="form--control form--control">
                                            @include('partials.country_code')
                                        </select>
                                    <!--<input type="text" class="form--control" name="country" readonly/>-->
                                </div>

                                <div class="form-group col-md-6">
                                    <label>@lang('Mobile')*</label>
                                    <div class="input-group mb-3 input-group-custom">
                                        <div class="input-group-prepend w-25">
                                             <input type="text" class="input-group-text w-100" name="country_code" readonly/>
                                        </div>
                                        <div class="input-group-append w-75">
                                            <input type="text" class="form--control" name="mobile" required>
                                        </div>
                                    </div>
                                </div>
                                
                                
                                <div class="form-group col-lg-6">
                                    <label>@lang('Username')</label>
                                    <input type="text" class="form--control" name="username" value="{{old('username')}}" required>
                                </div>

                                <div class="form-group col-lg-6">
                                    <label>@lang('Password')</label>
                                    <input type="password" class="form--control" name="password" id="myInputTwo" required>
                                    @if($general->secure_password)
                                        <p class="text-danger my-1 capital">@lang('At least 1 capital letter is required')</p>
                                        <p class="text-danger my-1 number">@lang('At least 1 number is required')</p>
                                        <p class="text-danger my-1 special">@lang('At least 1 special character is required')</p>
                                    @endif
                                </div>



                                <div class="form-group col-lg-6">
                                    <label>@lang('Confirm password')</label>
                                    <input type="password" class="form--control" name="password_confirmation" id="myInputTwo" required>
                                    <input type="hidden" name="add_user" value="true">
                                </div>

                                @php
                                    $links = getContent('user_links.element');
                                @endphp

                                @if($links->count() > 0)
                                <div class="col-lg-12 form-group">
                                    <div class="checkbox-wrapper d-flex flex-wrap align-items-center">
                                        <div class="checkbox-item">
                                            <input type="checkbox" id="c1" name="ticket-type" required>
                                            <label for="c1">@lang('I have read and agree to the')
                                                @foreach ($links as $item)
                                                <a href="{{route('links', slug($item->data_values->title).'-'.$item->id)}}">@php echo __($item->data_values->title) @endphp</a>@if(!$loop->last),@endif
                                                @endforeach
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                @endif

                                <div class="col-lg-12 form-group text-center">
                                    <input type="submit" class="submit-btn" id="recaptcha" value="Add New User">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
        </div>


@endsection
@push('style')
<style>
    .form--control{
        width:100%;
    }
</style>
@endpush
@push('script')
    <script>
        "use strict";

        (function ($) {
            var not_select_msg = $('#position-test').html();

            $(document).on('keyup', '#ref_name', function () {
                var ref_id = $('#ref_name').val();
                var token = "{{csrf_token()}}";
                $.ajax({
                    type: "POST",
                    url: "{{route('check.referral')}}",
                    data: {
                        'ref_id': ref_id,
                        '_token': token
                    },
                    success: function (data) {
                        if (data.success) {
                            $('select[name=position]').removeAttr('disabled');
                            $('#position-test').text('');
                        } else {
                            $('select[name=position]').attr('disabled', true);
                            $('#position-test').html(not_select_msg);
                        }
                        $("#ref").html(data.msg);
                    }
                });
            });

            $(document).on('change', '#position', function () {
                updateHand();
            });

            function updateHand() {
                var pos = $('#position').val();
                var referrer_id = $('#referrer_id').val();
                var token = "{{csrf_token()}}";
                $.ajax({
                    type: "POST",
                    url: "{{route('get.user.position')}}",
                    data: {
                        'referrer': referrer_id,
                        'position': pos,
                        '_token': token
                    },
                    success: function (data) {
                        $("#position-test").html(data.msg);
                    }
                });
            }

            var x = document.getElementById('country');
             var txt = "";
             var val = "";
             for (var i = 0; i < x.length; i++) {
                 txt =x[i].text;
                 val =x[i].getAttribute('data-country');
                 x[i].text = val;
              }

        @if($country_code)
            $(`option[data-code={{ $country_code }}]`).attr('selected','');
        @endif


        var country_code = $('select[name=country] :selected').val();
        if(country_code){
            $('input[name=country_code]').val('+'+country_code);
        }


        $('select[name=country]').change(function(){
            $('input[name=country_code]').val("+"+$('select[name=country] :selected').val() );
        });

        function submitUserForm() {
            var response = grecaptcha.getResponse();
            if (response.length == 0) {
                document.getElementById('g-recaptcha-error').innerHTML = '<span style="color:red;">@lang("Captcha field is required.")</span>';
                return false;
            }
            return true;
        }

        function verifyCaptcha() {
            document.getElementById('g-recaptcha-error').innerHTML = '';
        }
        @if($general->secure_password)
            $('input[name=password]').on('input',function(){
                var password = $(this).val();
                var capital = /[ABCDEFGHIJKLMNOPQRSTUVWXYZ]/;
                var capital = capital.test(password);
                if (!capital){
                    $('.capital').removeClass('d-none');
                }else{
                    $('.capital').addClass('d-none');
                }
                var number = /[123456790]/;
                var number = number.test(password);
                if (!number){
                    $('.number').removeClass('d-none');
                }else{
                    $('.number').addClass('d-none');
                }
                var special = /[`!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/;
                var special = special.test(password);
                if (!special){
                    $('.special').removeClass('d-none');
                }else{
                    $('.special').addClass('d-none');
                }

            });
        @endif

        })(jQuery);

    </script>



@endpush


