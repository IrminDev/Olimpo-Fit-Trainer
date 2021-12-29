//Barra progreso
function iniciar(){
	const progressBar= document.querySelector('.progressbar')
	progressBar.setAttribute('id', 'play-animation')
}
//Temporizador
function Temporizador(){
	const startingMinutes=25;
	let time= startingMinutes*60;
	
	const countdownEl=document.getElementById('countdown');
	setInterval(updateCountdown,1000);
	document.getElementById("exer1").style.display="block";
	function updateCountdown(){
		const minutes= Math.floor(time/60);
		let seconds= time % 60;
                
		seconds= seconds<10 ? '0' +seconds: seconds;
	
		countdownEl.innerHTML = minutes +":"+ seconds;
		time--;
                if(minutes<0){
                    countdownEl.innerHTML = "0:00";

                }
	}
}
document.getElementById("exer1").style.display="none";