/**
 * 
 */

 const getDateTime = ()=>{
	 const type = document.getElementById('type');
	 if(type.value ==='date'){
		 location.href = '/mvc/getDate';
	 } else if(type.value === 'time'){
		 location.href = '/mvc/getTime';
	 } else if(type.value === 'datetime') {
		 location.href = '/mvc/getDateTime';
	 }
 } 

 document.getElementById('btn').addEventListener('click', getDateTime);