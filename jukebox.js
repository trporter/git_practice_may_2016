notes = "C#*2"
function parseNote(){
 var melody = {};
 var songArray = [];
 var array = notes.split("*");
 melody["pitch"] = array[0];
 melody["beats"] = array[1]/1;
 // songArray.push(melody);
 console.log(melody);
}
parseNote();
