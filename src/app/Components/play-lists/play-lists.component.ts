import { Component } from '@angular/core';
import { Playlistmodel } from 'src/app/Models/playlistmodel';
import { VideoService } from 'src/app/Services/video.service';

@Component({
  selector: 'app-play-lists',
  templateUrl: './play-lists.component.html',
  styleUrls: ['./play-lists.component.css']
})
export class PlayListsComponent {
  name!:string
  playlists:Array<Playlistmodel>=[]
constructor(private api:VideoService) {
 this.getPlayList()
}
Create(){
  this.api.Createplaylist({name:this.name}).subscribe({next:(value)=>{
    alert(value.message)
    this.getPlayList()
  },
error(err) {
  console.log(err);
},})
}
getPlayList(){
  this.api.getPlaylists().subscribe({
    next:(value)=>{
        this.playlists=value
    },
    error:(err)=>{
        console.log(err);
    },
  })
}
}
