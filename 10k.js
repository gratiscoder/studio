w=$(window);
function rh(){
	b=$("#bg");
	b.width(w.width()-20);
	b.height(w.height()-20);
}
w.ready(rh);
w.resize(rh);


