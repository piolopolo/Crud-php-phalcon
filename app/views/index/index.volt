<head>
    <title>Crud testing</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=0.5">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<div class="w3-top">
    <div class="w3-bar w3-white w3-wide w3-padding w3-card">
        <a href="/" class="w3-bar-item w3-button"><b>Crud</b>Testing</a>
        <div class="w3-right w3-hide-small">
            <a href="#projects" class="w3-bar-item w3-button">Projects</a>
            <a href="#about" class="w3-bar-item w3-button">About</a>
            <a href="#contact" class="w3-bar-item w3-button">Contact</a>
        </div>
    </div>
</div>

<div class="container">
{% for idx, datas in data %}
        {% if loop.first %}
                    <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body text-center">
                                <h3 class="card-title m-b-0">Daftar Mahasiswa</h3>
                            </div>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead class="thead-light">
                                            <tr>
                                                <th>
                                                    <label class="customcheckbox m-b-20">
                                                        <input type="checkbox" id="mainCheckbox">
                                                        <span class="checkmark"></span>
                                                    </label>
                                                </th>
                                                <th scope="col">No</th>
                                                <th scope="col">Nama</th>
                                                <th scope="col">NIM</th>
                                                <th scope="col">Prodi</th>
                                                <th scope="col">Edit</th>
                                                <th scope="col">Delete</th>
                                                <th scope="col"></th>
                                            </tr>
                                        </thead>
                                        {% endif %}
                                        <tbody class="customtable">
                                            <tr>
                                                <th>
                                                    <label class="customcheckbox">
                                                        <input type="checkbox" class="listCheckbox">
                                                        <span class="checkmark"></span>
                                                    </label>
                                                </th>
                                                <td>{{ idx + 1 }}</td>
                                                <td>{{ datas.namas }}</td>
                                                <td>{{ datas.nims }}</td>
                                                <td>{{ datas.prodis }}</td>
                                                <td><a href="{{url('org/edit/' ~ datas.id)}}">Edit</a></td>
                                                <td><a href="{{url('org/delete/' ~ datas.id)}}">Delete</a></td>
                                                <td><button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#exampleModal{{ datas.id }}">Detail
                                                 </button></td>
                                            </tr>
                                        </tbody>
                                        {% if loop.last %}
                                    </table>
                                    {% endif %}
                                    {% else %}
                                      No Data
                                    {% endfor %}
                                </div>
                        </div>
                    </div>
                </div>

                   </div>
<style>
 @import url(http://fonts.googleapis.com/css?family=Calibri:400,300,700);

 body {
     font-family: 'Calibri', sans-serif !important
 }

.container{
    margin-top:100px;
}
.card {
       position: relative;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -ms-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0px solid transparent;
    border-radius: 0px;
}


.card-body {
    -webkit-box-flex: 1;
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 1.25rem;
}

.card .card-title {
    position: relative;
    font-weight: 600;
    margin-bottom: 10px;
}


.table {
    width: 100%;
    max-width: 100%;
    margin-bottom: 1rem;
    background-color: transparent;
}

* {
    outline: none;
}

.table th, .table thead th {
    font-weight: 500;
}


.table thead th {
    vertical-align: bottom;
    border-bottom: 2px solid #dee2e6;
}


.table th {
    padding: 1rem;
    vertical-align: top;
    border-top: 1px solid #dee2e6;
}


.table th, .table thead th {
    font-weight: 500;
}


th {
    text-align: inherit;
}


.m-b-20 {
    margin-bottom: 20px;
}


.customcheckbox {
    display: block;
    position: relative;
    padding-left: 24px;
    font-weight: 100;
    margin-bottom: 12px;
    cursor: pointer;
    font-size: 22px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}


.customcheckbox input {
    position: absolute;
    opacity: 0;
    cursor: pointer;
}

.checkmark {
    position: absolute;
    top: -3px;
    left: 0;
    height: 20px;
    width: 20px;
    background-color: #CDCDCD;
    border-radius: 6px;
}


.customcheckbox input:checked ~ .checkmark {
    background-color: #2196BB;
}


.customcheckbox .checkmark:after {
    left: 8px;
    top: 4px;
    width: 5px;
    height: 10px;
    border: solid white;
    border-width: 0 3px 3px 0;
    -webkit-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    transform: rotate(45deg);
}
</style>

</div>
<div class="container p-4" style="display:flex; flex-direction:column; align-items:center">
{{link_to("org/daftar", "Daftar", "class": "btn btn-primary") }}
</div>
</div>