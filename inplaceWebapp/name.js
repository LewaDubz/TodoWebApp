$(document).ready(function() {
    console.log('start')
})

function loadToDos() {
    $(document).ready(function (data) {
        console.log("toDosLoaded");
            $.get("/hi?addtodo=" + $("#todoChore").val(), function (data) {
                console.log($("#todoChore").val());
                console.log(data)
                var lines = data.split("\n");
                document.getElementById("lanFormattedInstructions").innerText = "";
                for (var i = 0; i < lines.length - 1; i++) {
                    var id = i + 1;
                    document.getElementById("lanFormattedInstructions").innerHTML += "<br>" + id + " ...     " +" #ToDo" + lines[i] +  "<button value = '" + i + "'name = ''  id='deleteTask' onclick='deleteTask(" + id + ")'>Click here to delete task </button><br>";
                    $("#todoChore").val("");
                }

            })

        })

}
function  deleteTask(integer) {
        var deleteId = integer;
        console.log(deleteId);

    $(document).ready(function (data) {
        document.getElementById("lanFormattedInstructions").innerText = "";

    $.get("/hi?remove=" + deleteId ,function (data) {
        var lines = data.split("\n");
        for(var i = 0; i<lines.length-1;i++){
            var id = i+1;
            document.getElementById("lanFormattedInstructions").innerHTML += "<br>" + id + " ...     " +" #ToDo" + lines[i] +  "<button value = '" + i + "'name = ''  id='deleteTask' onclick='deleteTask(" + id + ")'>Click here to delete task </button><br>";
        }

    })

})}
