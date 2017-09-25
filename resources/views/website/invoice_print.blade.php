 <body onload="javascript:window.print()">
    <style type="text/css">
.table {
    font-size: 12px;
    border-collapse: collapse;
    width: 100%;
}

.table, .table th, .table td {
    padding: 4px;
    border: 1px solid black;
}
.tb {
    border: 1px solid #ff;
}
</style>
     <table width="100%" class="table">
@foreach($bookingspaces as $row)


{{ $row->invoice }}


@endforeach