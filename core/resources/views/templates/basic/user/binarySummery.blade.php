@extends($activeTemplate . 'user.layouts.app')

@section('panel')
    <div class="row">
        <div class="col-lg-12">
            <div class="card b-radius--10 overflow-hidden">
                <div class="card-body p-0">
                    <div class="table-responsive--sm">
                        <table class="table table--light style--two">
                            <thead>
                            <tr>
                                <th scope="col">@lang('Total Paid')</th>
                                <th scope="col">@lang('Carry left')</th>
                                <th scope="col">@lang('Carry right')</th>
                                <th scope="col">@lang('BV left')</th>
                                <th scope="col">@lang('BV right')</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td data-label="@lang('Paid left')">{{getAmount($logs->total_binary_com).$gnl->cur_sym}}</td>
                                <td data-label="@lang('Free left')">{{getAmount($logs->left_active).$gnl->cur_sym}}</td>
                                <td data-label="@lang('Free right')">{{getAmount($logs->right_active).$gnl->cur_sym}}</td>
                                <td data-label="@lang('Total L')">{{getAmount($logs->left_count).$gnl->cur_sym}}</td>
                                <td data-label="@lang('Bv right')">{{getAmount($logs->right_count).$gnl->cur_sym}}</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
