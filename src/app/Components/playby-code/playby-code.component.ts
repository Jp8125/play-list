import { Component } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';

@Component({
  selector: 'app-playby-code',
  templateUrl: './playby-code.component.html',
  styleUrls: ['./playby-code.component.css']
})
export class PlaybyCodeComponent {
src:string="https://www.youtube.com/embed/tgbNymZ7vqY?controls=0"
trustedurl:any
constructor(private sanitizer: DomSanitizer){
}
changeurl(){
  // this.trustedurl = this.sanitizer.bypassSecurityTrustUrl(this.src);
  // console.log(this.trustedurl);
}
}
