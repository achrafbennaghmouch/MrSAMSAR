alert("okkkk")

 function Annoncehover(x){
      x.children[0].style.display="block";
      x.children[1].style.filter="blur(2px)";
      x.children[2].style.display="block";
      x.children[3].style.display="block";
  }
  function AnnonceDehover(x){
      x.children[0].style.display="none";
      x.children[1].style.filter="none";
      x.children[2].style.display="none";
      x.children[3].style.display="none";
   
  }
  var nbr=0;
  function DoFav(x){
	     console.log("salam")
      if(nbr==0){
         x.children[0].style.display="none"
         x.children[1].style.display="block"
         var m = x.children[2].value;
  
       //$.post("",{})
         nbr=1
      }else{
          x.children[1].style.display="none"
          x.children[0].style.display="block"
          nbr=0
      }
  }


