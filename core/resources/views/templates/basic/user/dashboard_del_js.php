@push('script')
<script src="{{asset($activeTemplateTrue.'users/js/vendor/apexcharts.min.js')}}"></script>
<script>
(function ($) {
    "use strict";
    // apex-bar-chart js
    var options = {
      series: [{
      name: 'Clicks',
      data: [
        @foreach($chart['click'] as $key => $click)
            {{ $click }},
        @endforeach
      ]
    }, {
      name: 'Earn Amount',
      data: [
            @foreach($chart['amount'] as $key => $amount)
                {{ $amount }},
            @endforeach
      ]
    }],
      chart: {
      type: 'bar',
      height: 580,
      toolbar: {
        show: false
      }
    },
    plotOptions: {
      bar: {
        horizontal: false,
        columnWidth: '55%',
        endingShape: 'rounded'
      },
    },
    dataLabels: {
      enabled: false
    },
    stroke: {
      show: true,
      width: 2,
      colors: ['transparent']
    },
    xaxis: {
      categories: [
      @foreach($chart['amount'] as $key => $amount)
                '{{ $key }}',
            @endforeach
    ],
    },
    fill: {
      opacity: 1
    },
    tooltip: {
      y: {
        formatter: function (val) {
          return val
        }
      }
    }
    };
    var chart = new ApexCharts(document.querySelector("#apex-bar-chart"), options);
    chart.render();
        function createCountDown(elementId, sec) {
            var tms = sec;
            var x = setInterval(function() {
                var distance = tms*1000;
                var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((distance % (1000 * 60)) / 1000);
                document.getElementById(elementId).innerHTML =days+"d: "+ hours + "h "+ minutes + "m " + seconds + "s ";
                if (distance < 0) {
                    clearInterval(x);
                    document.getElementById(elementId).innerHTML = "{{__('COMPLETE')}}";
                }
                tms--;
            }, 1000);
        }
      createCountDown('counter', {{\Carbon\Carbon::tomorrow()->diffInSeconds()}});
})(jQuery);
</script>
@endpush



        <!--    <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">-->
        <!--        <div class="dashboard-w1 bg--success b-radius--10 box-shadow">-->
        <!--            <div class="icon">-->
        <!--                <i class="las la-wallet"></i>-->
        <!--            </div>-->
        <!--            <div class="details">-->
        <!--                <div class="numbers">-->
        <!--                    <span class="amount">{{ auth()->user()->clicks->count() }}</span>-->
        <!--                </div>-->
        <!--                <div class="desciption">-->
        <!--                    <span class="text--small">@lang('Total Clicks')</span>-->
        <!--                </div>-->
        <!--                <a href="{{ route('user.ptc.clicks') }}"-->
        <!--                   class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>-->
        <!--            </div>-->
        <!--        </div>-->
        <!--    </div>-->

        <!--    <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">-->
        <!--        <div class="dashboard-w1 bg--primary b-radius--10 box-shadow">-->
        <!--            <div class="icon">-->
        <!--                <i class="las la-cloud-upload-alt "></i>-->
        <!--            </div>-->
        <!--            <div class="details">-->
        <!--                <div class="numbers">-->
        <!--                    <span class="amount">{{ auth()->user()->dpl - auth()->user()->clicks->where('vdt',Date('Y-m-d'))->count() }}</span>-->
        <!--                </div>-->
        <!--                <div class="desciption">-->
        <!--                    <span class="text--small">@lang('Remain clicks for today')</span>-->
        <!--                </div>-->
        <!--                <a href="{{ route('user.ptc.index') }}"-->
        <!--                   class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>-->
        <!--            </div>-->
        <!--        </div>-->
        <!--    </div>-->

        <!--    <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">-->
        <!--        <div class="dashboard-w1 bg--10 b-radius--10 box-shadow">-->
        <!--            <div class="icon">-->
        <!--                <i class="las la-cloud-download-alt"></i>-->
        <!--            </div>-->
        <!--            <div class="details">-->
        <!--                <div class="numbers">-->
        <!--                    <span class="amount">{{ auth()->user()->clicks->where('vdt',Date('Y-m-d'))->count() }}</span>-->
        <!--                </div>-->
        <!--                <div class="desciption">-->
        <!--                    <span class="text--small">@lang('Today\'s Clicks')</span>-->
        <!--                </div>-->
        <!--                <a href="{{ route('user.ptc.clicks') }}"-->
        <!--                   class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>-->
        <!--            </div>-->
        <!--        </div>-->
        <!--    </div>-->
        <!--    <div class="col-xl-3 col-lg-4 col-sm-6 mb-30">-->
        <!--        <div class="dashboard-w1 bg--teal b-radius--10 box-shadow">-->
        <!--            <div class="icon">-->
        <!--                <i class="las la-check"></i>-->
        <!--            </div>-->
        <!--            <div class="details">-->
        <!--                <div class="numbers">-->
        <!--                    <span class="amount" id="counter">{{$completeWithdraw}}</span>-->
        <!--                </div>-->
        <!--                <div class="desciption">-->
        <!--                    <span class="text--small">@lang('Next Reminder')</span>-->
        <!--                </div>-->
        <!--                <a href="#0"-->
        <!--                   class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>-->
        <!--            </div>-->
        <!--        </div>-->
        <!--    </div>-->

        <!--<div class="col-lg-12 mb-30">-->
        <!--    <div class="card">-->
        <!--        <div class="card-body">-->
        <!--        <h5 class="card-title">@lang('Click & Earn Report')</h5>-->
        <!--        <div id="apex-bar-chart"></div>-->
        <!--        </div>-->
        <!--    </div>-->
        <!--</div>-->



        <!--<div class="col-xl-3 col-lg-4 col-sm-6 mb-30">-->
        <!--    <div class="dashboard-w1 bg--15 b-radius--10 box-shadow">-->
        <!--        <div class="icon">-->
        <!--            <i class="fa fa-arrow-circle-left"></i>-->
        <!--        </div>-->
        <!--        <div class="details">-->
        <!--            <div class="numbers">-->
        <!--                    <span class="amount">{{auth()->user()->userExtra->free_left + auth()->user()->userExtra->paid_left}}</span>-->
        <!--            </div>-->
        <!--            <div class="desciption">-->
        <!--                <span class="text--small">@lang('Total Left')</span>-->
        <!--            </div>-->
        <!--            <a href="{{route('user.my.tree')}}"-->
        <!--               class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>-->
        <!--        </div>-->
        <!--    </div>-->
        <!--</div>-->

        <!--<div class="col-xl-3 col-lg-4 col-sm-6 mb-30">-->
        <!--    <div class="dashboard-w1 bg--10 b-radius--10 box-shadow">-->
        <!--        <div class="icon">-->
        <!--            <i class="fa fa-arrow-circle-right"></i>-->
        <!--        </div>-->
        <!--        <div class="details">-->
        <!--            <div class="numbers">-->
        <!--                <span-->
        <!--                    class="amount">{{auth()->user()->userExtra->free_right + auth()->user()->userExtra->paid_left}}</span>-->
        <!--            </div>-->
        <!--            <div class="desciption">-->
        <!--                <span class="text--small">@lang('Total Right')</span>-->
        <!--            </div>-->
        <!--            <a href="{{route('user.my.tree')}}"-->
        <!--               class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>-->
        <!--        </div>-->
        <!--    </div>-->
        <!--</div>-->


        <!--<div class="col-xl-3 col-lg-4 col-sm-6 mb-30">-->
        <!--    <div class="dashboard-w1 bg--17 b-radius--10 box-shadow">-->
        <!--        <div class="icon">-->
        <!--            <i class="las la-cart-arrow-down"></i>-->
        <!--        </div>-->
        <!--        <div class="details">-->
        <!--            <div class="numbers">-->
        <!--                <span-->
        <!--                    class="amount">{{auth()->user()->userExtra->bv_left + auth()->user()->userExtra->bv_right}}</span>-->
        <!--            </div>-->
        <!--            <div class="desciption">-->
        <!--                <span class="text--small">@lang('Total BV')</span>-->
        <!--            </div>-->
        <!--            <a href="{{route('user.bv.log')}}?type=paidBV"-->
        <!--               class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>-->
        <!--        </div>-->
        <!--    </div>-->
        <!--</div>-->


        <!--<div class="col-xl-3 col-lg-4 col-sm-6 mb-30">-->
        <!--    <div class="dashboard-w1 bg--19 b-radius--10 box-shadow">-->
        <!--        <div class="icon">-->
        <!--            <i class="las la-arrow-alt-circle-left"></i>-->
        <!--        </div>-->
        <!--        <div class="details">-->
        <!--            <div class="numbers">-->
        <!--                <span class="amount">{{getAmount(auth()->user()->userExtra->bv_left)}}</span>-->
        <!--            </div>-->
        <!--            <div class="desciption">-->
        <!--                <span class="text--small">@lang('Left BV')</span>-->
        <!--            </div>-->
        <!--            <a href="{{route('user.bv.log')}}?type=leftBV"-->
        <!--               class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>-->
        <!--        </div>-->
        <!--    </div>-->
        <!--</div>-->

        <!--<div class="col-xl-3 col-lg-4 col-sm-6 mb-30">-->
        <!--    <div class="dashboard-w1 bg--11 b-radius--10 box-shadow">-->
        <!--        <div class="icon">-->
        <!--            <i class="las la-arrow-alt-circle-right"></i>-->
        <!--        </div>-->
        <!--        <div class="details">-->
        <!--            <div class="numbers">-->
        <!--                <span class="amount">{{getAmount(auth()->user()->userExtra->bv_right)}}</span>-->
        <!--            </div>-->
        <!--            <div class="desciption">-->
        <!--                <span class="text--small">@lang('Right BV')</span>-->
        <!--            </div>-->
        <!--            <a href="{{route('user.bv.log')}}?type=rightBV"-->
        <!--               class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>-->
        <!--        </div>-->
        <!--    </div>-->
        <!--</div>-->


        <!--<div class="col-xl-3 col-lg-4 col-sm-6 mb-30">-->
        <!--    <div class="dashboard-w1 bg--13 b-radius--10 box-shadow">-->
        <!--        <div class="icon">-->
        <!--            <i class="las la-hand-holding-usd"></i>-->
        <!--        </div>-->
        <!--        <div class="details">-->
        <!--            <div class="numbers">-->
        <!--                <span class="amount">{{getAmount($totalBvCut)}}</span>-->
        <!--                <span class="currency-sign">{{$general->cur_text}}</span>-->
        <!--            </div>-->
        <!--            <div class="desciption">-->
        <!--                <span class="text--small">@lang('Total Bv Cut')</span>-->
        <!--            </div>-->
        <!--            <a href="{{route('user.bv.log')}}?type=cutBV"-->
        <!--               class="btn btn-sm text--small bg--white text--black box--shadow3 mt-3">@lang('View All')</a>-->
        <!--        </div>-->
        <!--    </div>-->
        <!--</div>-->
