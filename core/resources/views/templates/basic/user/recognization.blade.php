@extends($activeTemplate . 'user.layouts.app')

@section('panel')
    <div class="row">
            <div class="col-lg-12 col-sm-6 mb-30">
                <div class="card border--light">
                    <div class="card-header">@lang('Disclaimer')</div>
                    <div class="card-body">
                        <p class="card-text">Your country is not eligible for Recognition. We will add every country with a short time. </p>
                    </div>
                </div>
            </div>

        <div class="col-lg-12">
            <div class="card b-radius--10 overflow-hidden">
                <div class="card-body p-0">
                    <div class="table-responsive--sm">
                        <table class="table table--light style--two">
                            <thead>
                            <tr>
                                <th scope="col">@lang('Rank')</th>
                                <th scope="col">@lang('TLV')</th>
                                <th scope="col">@lang('TRV')</th>
                                <th scope="col">@lang('Package')</th>
                                <th scope="col">@lang('Qualification')</th>
                                <th scope="col">@lang('Reward')</th>
                                <th scope="col">@lang('Action')</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td data-label="@lang('Paid left')">Power Member</td>
                                <td data-label="@lang('Paid right')">$2000</td>
                                <td data-label="@lang('Free left')">$1000</td>
                                <td data-label="@lang('Free right')">Silver</td>
                                <td data-label="@lang('Free right')"></td>
                                <td data-label="@lang('Free right')"></td>
                                <td data-label="@lang('Free right')"><button class="btn btn-danger disabled">Claim</button></td>
                                
                            </tr>
                             <tr>
                                <td data-label="@lang('Paid left')">Super Member</td>
                                <td data-label="@lang('Paid right')">$8500</td>
                                <td data-label="@lang('Free left')">$4000</td>
                                <td data-label="@lang('Free right')">Gold</td>
                                <td data-label="@lang('Free right')">Power Member <span class="badge badge-info">1/1</span></td>
                                <td data-label="@lang('Free right')">$100</td>
                                <td data-label="@lang('Free right')"><button class="btn btn-danger disabled">Claim</button></td>
                                
                            </tr>
                             <tr>
                                <td data-label="@lang('Paid left')">Royal Member</td>
                                <td data-label="@lang('Paid right')">$25000</td>
                                <td data-label="@lang('Free left')">$10000</td>
                                <td data-label="@lang('Free right')">Gold</td>
                                <td data-label="@lang('Free right')">Super Member <span class="badge badge-info">1/1</span></td>
                                <td data-label="@lang('Free right')">$250</td>
                                <td data-label="@lang('Free right')"><button class="btn btn-danger disabled">Claim</button></td>
                                
                            </tr>
                            <tr>
                                <td data-label="@lang('Paid left')">Executive Member</td>
                                <td data-label="@lang('Paid right')">$85000</td>
                                <td data-label="@lang('Free left')">$30000</td>
                                <td data-label="@lang('Free right')">Platinum</td>
                                <td data-label="@lang('Free right')">Royal Member <span class="badge badge-info">1L</span>  <span class="badge badge-warning">1R</span></td>
                                <td data-label="@lang('Free right')">$400</td>
                                <td data-label="@lang('Free right')"><button class="btn btn-danger disabled">Claim</button></td>
                                
                            </tr>
                            <tr>
                                <td data-label="@lang('Paid left')">Director</td>
                                <td data-label="@lang('Paid right')">$2,50000</td>
                                <td data-label="@lang('Free left')">$90000</td>
                                <td data-label="@lang('Free right')">Professional</td>
                                <td data-label="@lang('Free right')">Executive <span class="badge badge-info">1L</span>  <span class="badge badge-warning">1R</span></td>
                                <td data-label="@lang('Free right')">I-Phone</td>
                                <td data-label="@lang('Free right')"><button class="btn btn-danger disabled">Claim</button></td>
                                
                            </tr>
                            <tr>
                                <td data-label="@lang('Paid left')">Ambassador</td>
                                <td data-label="@lang('Paid right')">$6,50000</td>
                                <td data-label="@lang('Free left')">$2,60000</td>
                                <td data-label="@lang('Free right')">Elite</td>
                                <td data-label="@lang('Free right')">Director <span class="badge badge-info">1L</span>  <span class="badge badge-warning">1R</span></td>
                                <td data-label="@lang('Free right')">Apple Mac Book</td>
                                <td data-label="@lang('Free right')"><button class="btn btn-danger disabled">Claim</button></td>
                                
                            </tr>
                            <tr>
                                <td data-label="@lang('Paid left')">President</td>
                                <td data-label="@lang('Paid right')">$15,00000</td>
                                <td data-label="@lang('Free left')">$6,60000</td>
                                <td data-label="@lang('Free right')">Elite</td>
                               <td data-label="@lang('Free right')">Ambassador <span class="badge badge-info">2L</span>  <span class="badge badge-warning">2R</span></td>
                                <td data-label="@lang('Free right')">Brand New Car</td>
                                <td data-label="@lang('Free right')"><button class="btn btn-danger disabled">Claim</button></td>
                                
                            </tr>
                            <tr>
                                <td data-label="@lang('Paid left')">Legend</td>
                                <td data-label="@lang('Paid right')">$35,00000</td>
                                <td data-label="@lang('Free left')">$16,00000</td>
                                <td data-label="@lang('Free right')">Elite</td>
                                <td data-label="@lang('Free right')">President <span class="badge badge-info">2L</span>  <span class="badge badge-warning">2R</span></td>
                                <td data-label="@lang('Free right')">Brand New Car</td>
                                <td data-label="@lang('Free right')"><button class="btn btn-danger disabled">Claim</button></td>
                                
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
