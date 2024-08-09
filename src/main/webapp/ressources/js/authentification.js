class LoginSystem{
    constructor(nameOfclass){
        this.login= document.querySelectorAll(`.${nameOfclass}`)[0]
        this.password= document.querySelectorAll(`.${nameOfclass}`)[1]
        
        this.define_listener()
        }
define_listener =()=>{
    document.querySelector(".btn-primary").addEventListener("click",this.validate)
   
}
vider=()=>{
    this.login.classList.remove("is-invalid") ;
    this.login.classList.remove("is-valid");
    this.password.classList.remove("is-invalid") ;
    this.password.classList.remove("is-valid")
}
validate =()=>{
    this.vider();
    if(this.login.value == "") { this.login.classList.add("is-invalid") };
    if(this.password.value == "") this.password.classList.add("is-invalid")
    this.password.value != "" && this.login.value !="" ? this.send_ajax() : '';
    }
}
const login_validation = new LoginSystem('form-control');