<a href="{{ url("/_article/$model->id_articel/edit") }}" class="btn btn-warning">Edit</a>
<br>
<button onclick="btnDelete( {{ json_encode($model) }})" class="btn btn-danger mt-2">Hapus</button>

