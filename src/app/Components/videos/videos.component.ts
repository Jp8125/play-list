import { Component } from '@angular/core';
import { VideoModel } from 'src/app/Models/video.model';
import { VideoService } from 'src/app/Services/video.service';

@Component({
  selector: 'app-videos',
  templateUrl: './videos.component.html',
  styleUrls: ['./videos.component.css']
})
export class VideosComponent {
  vidArray:VideoModel[]=[]
  p:number=1
  url:string=""
constructor(private vidoesapi:VideoService) {
  this.vidoesapi.getVideos().subscribe({
    next:(value)=>{
      this.vidArray=value
  },
error:(err)=>{
    console.log(err.error);
},})
}
play(link:string){
  console.log(link);
  
this.url=link
}
}
