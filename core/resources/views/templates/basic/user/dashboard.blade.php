@extends($activeTemplate . 'user.layouts.app')

@section('panel')
    <div class="row mb-none-30">
        @if($general->show_notice != 0 )
            <div class="col-lg-12 col-sm-6 mb-30">
                <div class="card border--light">
                    <div class="card-header">@lang('Notice')</div>
                    <div class="card-body">
                        <p class="card-text">@php echo $general->notice; @endphp</p>
                    </div>
                </div>
            </div>
        @endif
        @if($general->show_notice == 1 )
            <div class="col-lg-12 col-sm-6 mb-30">
                <div class="card border--light">
                    @if($general->notice == null)
                        <div class="card-header">@lang('Notice')</div>   @endif
                    <div class="card-body">
                        <p class="card-text"> @php echo $general->free_user_notice; @endphp </p>
                    </div>
                </div>
            </div>

        @endif




        <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
            <a href="{{route('user.report.transactions')}}">
                <div class="dashboard-w1 bg--13 b-radius--10 box-shadow">
                    <div class="icon">
                        <i class="las la-wallet"></i>
                    </div>
                    <div class="details">
                        <div class="numbers">
                            <span class="amount">{{getAmount($cashWallet)}}</span>
                            <span class="currency-sign">{{$general->cur_text}}</span>
                        </div>
                        <div class="desciption">
                            <span class="text--small">Cash Wallet</span>
                        </div>
                        <!--<a href="{{route('user.report.transactions')}}"-->
                        <!--   class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>-->
                    </div>
                </div>
            </a>
        </div>
        
        
        <!--<div class="col-xl-3 col-lg-4 col-sm-6 mb-30">-->
        <!--    <div class="dashboard-w1 bg--17 b-radius--10 box-shadow">-->
        <!--        <div class="icon">-->
        <!--            <i class="las la-cart-arrow-down"></i>-->
        <!--        </div>-->
        <!--        <div class="details">-->
        <!--            <div class="numbers">-->
        <!--                <span-->
        <!--                    class="amount">{{getAmount($totalDeposit)}}</span>-->
        <!--            </div>-->
        <!--            <div class="desciption">-->
        <!--                <span class="text--small">@lang('Total Deposited')</span>-->
        <!--            </div>-->
        <!--            <a href="{{route('user.bv.log')}}?type=paidBV"-->
        <!--               class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>-->
        <!--        </div>-->
        <!--    </div>-->
        <!--</div>-->

        
        <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
            <a href="{{route('user.report.transactions')}}">
                <div class="dashboard-w1 bg--success b-radius--10 box-shadow">
                    <div class="icon">
                        <i class="las la-wallet"></i>
                    </div>
                    <div class="details">
                        <div class="numbers">
                            <span class="amount">{{getAmount($savingWallet)}}</span>
                            <span class="currency-sign">{{$general->cur_text}}</span>
                        </div>
                        <div class="desciption">
                            <span class="text--small">Saving Wallet</span>
                        </div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
            <a href="{{route('user.report.deposit')}}">
                <div class="dashboard-w1 bg--primary b-radius--10 box-shadow">
                    <div class="icon">
                        <i class="las la-cloud-upload-alt "></i>
                    </div>
                    <div class="details">
                        <div class="numbers">
                            <span class="amount">{{getAmount($openWallet)}}</span>
                            <span class="currency-sign">{{$general->cur_text}}</span>
                        </div>
                        <div class="desciption">
                            <span class="text--small">Open Wallet</span>
                        </div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">
            <a href="{{route('user.report.withdraw')}}">
                <div class="dashboard-w1 bg--10 b-radius--10 box-shadow">
                    <div class="icon">
                        <i class="las la-cloud-download-alt"></i>
                    </div>
                    <div class="details">
                        <div class="numbers">
                            <span class="amount">{{getAmount($totalWithdraw)}}</span>
                            <span class="currency-sign">{{$general->cur_text}}</span>
                        </div>
                        <div class="desciption">
                            <span class="text--small">@lang('Total Withdraw')</span>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <!--<div class="col-xl-3 col-lg-4 col-sm-6 mb-30">-->
        <!--    <div class="dashboard-w1 bg--teal b-radius--10 box-shadow">-->
        <!--        <div class="icon">-->
        <!--            <i class="las la-check"></i>-->
        <!--        </div>-->
        <!--        <div class="details">-->
        <!--            <div class="numbers">-->
        <!--                <span class="amount">{{$completeWithdraw}}</span>-->
        <!--            </div>-->
        <!--            <div class="desciption">-->
        <!--                <span class="text--small">@lang('Complete Withdraw')</span>-->
        <!--            </div>-->
        <!--            <a href="{{route('user.report.withdraw')}}?type=complete"-->
        <!--               class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>-->
        <!--        </div>-->
        <!--    </div>-->
        <!--</div>-->

        <!--<div class="col-xl-3 col-lg-4 col-sm-6 mb-30">-->
        <!--    <div class="dashboard-w1 bg--warning b-radius--10 box-shadow">-->
        <!--        <div class="icon">-->
        <!--            <i class="las la-spinner"></i>-->
        <!--        </div>-->
        <!--        <div class="details">-->
        <!--            <div class="numbers">-->
        <!--                <span class="amount">{{$pendingWithdraw}}</span>-->
        <!--            </div>-->
        <!--            <div class="desciption">-->
        <!--                <span class="text--small">@lang('Pending Withdraw')</span>-->
        <!--            </div>-->
        <!--            <a href="{{route('user.report.withdraw')}}?type=complete"-->
        <!--               class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>-->
        <!--        </div>-->
        <!--    </div>-->
        <!--</div>-->

        <!--<div class="col-xl-3 col-lg-4 col-sm-6 mb-30">-->
        <!--    <div class="dashboard-w1 bg--danger b-radius--10 box-shadow">-->
        <!--        <div class="icon">-->
        <!--            <i class="las la-ban"></i>-->
        <!--        </div>-->
        <!--        <div class="details">-->
        <!--            <div class="numbers">-->
        <!--                <span class="amount">{{$rejectWithdraw}}</span>-->
        <!--            </div>-->
        <!--            <div class="desciption">-->
        <!--                <span class="text--small">@lang('Reject Withdraw')</span>-->
        <!--            </div>-->
        <!--            <a href="{{route('user.report.withdraw')}}?type=reject"-->
        <!--               class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>-->
        <!--        </div>-->
        <!--    </div>-->
        <!--</div>-->

        <!--<div class="col-xl-3 col-lg-4 col-sm-6 mb-30">-->
        <!--    <div class="dashboard-w1 bg--cyan b-radius--10 box-shadow">-->
        <!--        <div class="icon">-->
        <!--            <i class="las la-money-bill-wave"></i>-->
        <!--        </div>-->
        <!--        <div class="details">-->
        <!--            <div class="numbers">-->
        <!--                <span class="amount">{{getAmount(auth()->user()->total_invest)}}</span>-->
        <!--                <span class="currency-sign">{{$general->cur_text}}</span>-->
        <!--            </div>-->
        <!--            <div class="desciption">-->
        <!--                <span class="text--small">@lang('Total Invest')</span>-->
        <!--            </div>-->
        <!--            <a href="{{route('user.report.invest')}}"-->
        <!--               class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>-->
        <!--        </div>-->
        <!--    </div>-->
        <!--</div>-->

        <div class="col-xl-4 col-lg-6 col-sm-6 mb-30">
            <div class="dashboard-w1 p-3 bg--12 b-radius--10 box-shadow">
                <div class="icon">
                     <i class="las la-users"></i>
                </div>
                <div class="details">
                    <div class="desciption h5">
                        Referal: {{$total_ref}}
                    </div>
                     
                     <div class="desciption h5">
                        Left: {{auth()->user()->userExtra->free_left + auth()->user()->userExtra->paid_left }}
                    </div>
                     <div class="desciption h5">
                        Right: {{auth()->user()->userExtra->free_right + auth()->user()->userExtra->paid_right }}
                    </div>
                    
                </div>
            </div>
        </div>

        <!--<div class="col-xl-3 col-lg-4 col-sm-6 mb-30">-->
        <!--    <div class="dashboard-w1 bg--info b-radius--10 box-shadow">-->
        <!--        <div class="icon">-->
        <!--            <i class="fa fa-tree"></i>-->
        <!--        </div>-->
        <!--        <div class="details">-->
        <!--            <div class="numbers">-->
        <!--                <span class="amount">{{getAmount(auth()->user()->total_binary_com)}}</span>-->
        <!--                <span class="currency-sign">{{$general->cur_text}}</span>-->
        <!--            </div>-->
        <!--            <div class="desciption">-->
        <!--                <span class="text--small">@lang('Total Binary Commission')</span>-->
        <!--            </div>-->
        <!--            <a href="{{route('user.report.binaryCom')}}"-->
        <!--               class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>-->
        <!--        </div>-->
        <!--    </div>-->
        <!--</div>-->

        <!--<div class="col-xl-3 col-lg-4 col-sm-6 mb-30">-->
        <!--    <div class="dashboard-w1 bg--3 b-radius--10 box-shadow">-->
        <!--        <div class="icon">-->
        <!--            <i class="las la-users"></i>-->
        <!--        </div>-->
        <!--    <div class="details">-->
        <!--            <div class="numbers">-->
        <!--                <span class="amount">{{$total_ref}}-->
        <!--            </div>-->
        <!--            <div class="desciption">-->
        <!--                <span class="text--small">@lang('Total Referral')</span>-->
        <!--            </div>-->
        <!--        <a href="{{route('user.my.ref')}}"-->
        <!--           class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>                -->
    
        <!--    </div>-->
                
        <!--    </div>-->
        <!--</div>-->
        
        
        
        <div class="col-xl-4 col-lg-6 col-sm-6 mb-30">
            <a href="{{route('user.binary.summery')}}">
                <div class="dashboard-w1 p-3 bg--14 b-radius--10 box-shadow">
                    <div class="icon">
                        <i class="las la-cloud-sun"></i>
                    </div>
                    <div class="details">
                        <div class="numbers">
                            <span class="amount">{{getAmount(auth()->user()->left_active)}}</span>
                            <span class="currency-sign">{{$general->cur_text}}</span>
                        </div>
                        <div class="desciption">
                            <span class="text--small">@lang('Total Left BV')</span>
                        </div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-xl-4 col-lg-6 col-sm-6 mb-30">
            <a href="{{route('user.binary.summery')}}">
                <div class="dashboard-w1 bg--7 b-radius--10 box-shadow">
                    <div class="icon">
                        <i class="las la-mountain"></i>
                    </div>
                    <div class="details">
                        <div class="numbers">
                            <span class="amount">{{getAmount(auth()->user()->right_active)}}</span>
                            <span class="currency-sign">{{$general->cur_text}}</span>
                        </div>
                        <div class="desciption">
                            <span class="text--small">@lang('Total Right BV')</span>
                        </div>
                    </div>
                </div>
            </a>
        </div>

        <!--<div class="col-xl-3 col-lg-4 col-sm-6 mb-30">-->
        <!--    <div class="dashboard-w1 bg--15 b-radius--10 box-shadow">-->
        <!--        <div class="icon">-->
        <!--            <i class="las la-tree"></i>-->
        <!--        </div>-->
        <!--        <div class="details">-->
        <!--            <div class="numbers">-->
        <!--                <span class="amount">{{getAmount(auth()->user()->left_active)}}</span>-->
        <!--                <span class="currency-sign">{{$general->cur_text}}</span>-->
        <!--            </div>-->
        <!--            <div class="desciption">-->
        <!--                <span class="text--small">@lang('Pending Left BV')</span>-->
        <!--            </div>-->
        <!--        <a href="{{route('user.binary.summery')}}"-->
        <!--               class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>-->
        <!--        </div>-->
        <!--    </div>-->
        <!--</div>-->

        <!--<div class="col-xl-3 col-lg-4 col-sm-6 mb-30">-->
        <!--    <div class="dashboard-w1 bg--17 b-radius--10 box-shadow">-->
        <!--        <div class="icon">-->
        <!--            <i class="las la-wind"></i>-->
        <!--        </div>-->
        <!--    <div class="details">-->
        <!--            <div class="numbers">-->
        <!--                <span class="amount">{{getAmount(auth()->user()->right_active)}}</span>-->
        <!--            </div>-->
        <!--            <div class="desciption">-->
        <!--                <span class="text--small">@lang('Pending Right BV')</span>-->
        <!--            </div>-->
        <!--        <a href="{{route('user.binary.summery')}}"-->
        <!--           class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>                -->
    
        <!--    </div>-->
                
        <!--    </div>-->
        <!--</div>-->

        
        
    </div>

@endsection

