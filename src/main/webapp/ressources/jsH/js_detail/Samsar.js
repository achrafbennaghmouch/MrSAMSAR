function AfficherDetails(x){
    let i=0
	if(x.textContent=='Features'){
        $('.Description').css('display','none');
        $( '.dsc' ).removeClass( "active" )
        $(x).addClass("active");
        $('.'+$(x).text()).fadeIn();
       
	}else if(x.textContent=='Description'){
        $( '.ftr' ).removeClass( "active" )
        $(x).addClass("active");
        $('.Features').css('display','none');
        $('.'+$(x).text()).fadeIn();
        
	}
}
$('.MettreFavoris').click(function(){
    alert("cc")
})