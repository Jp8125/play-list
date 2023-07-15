import { Component, Input, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { VideoModel } from 'src/app/Models/video.model';
import { VideoService } from 'src/app/Services/video.service';

@Component({
  selector: 'app-player',
  templateUrl: './player.component.html',
  styleUrls: ['./player.component.css']
})
export class PlayerComponent implements OnInit {
  ngOnInit(): void {
    this.api.getVideos().subscribe({
      next:(value)=>{
        console.log(value);
        this.videos =value   
        this.active.params.subscribe(res=>{
          this.video=this.videos.find(obj=>obj.vid==res['id']) as VideoModel
          console.log(this.video);
        })   
    },
  error:(err)=>{
      console.log(err);
  },})
  }
  video:VideoModel={} as VideoModel
  videos:Array<VideoModel>=[]
constructor(private api:VideoService,private active:ActivatedRoute) {
 
}
}
