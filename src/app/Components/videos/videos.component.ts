import { Component } from '@angular/core';
import { Playlist, Playlistmodel } from 'src/app/Models/playlistmodel';
import { VideoModel } from 'src/app/Models/video.model';
import { VideoService } from 'src/app/Services/video.service';

@Component({
  selector: 'app-videos',
  templateUrl: './videos.component.html',
  styleUrls: ['./videos.component.css']
})
export class VideosComponent {
  playlist:Playlistmodel[]=[]
  vidArray:Array<VideoModel>=[]
  p:number=1
  url:string=""
  id!:number
  vid!:number
constructor(private vidoesapi:VideoService) {
  this.vidoesapi.getPlaylists().subscribe({
    next:(value)=>{
      this.playlist=value
  },
error:(err)=>{
    console.log(err.error);
},})
this.vidoesapi.getVideos().subscribe({
  next:(value)=>{
      this.vidArray=value
  },
  error:(err)=>{
      console.log(err);
  },
})

}
play(link:string){
  console.log(link);
this.url=link
}
filter(id:number){
  this.vid=id
}
Add(){
  console.log(this.vid,this.id);
  this.vidoesapi.AddToplaylist({videoId:this.vid,listId:this.id}).subscribe({next(value) {
    alert(value.message)
  },error(err) {
    console.log(err);
  },})
}
}