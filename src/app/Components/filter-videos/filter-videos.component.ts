import { Component } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Playlist } from 'src/app/Models/playlistmodel';
import { VideoService } from 'src/app/Services/video.service';

@Component({
  selector: 'app-filter-videos',
  templateUrl: './filter-videos.component.html',
  styleUrls: ['./filter-videos.component.css']
})
export class FilterVideosComponent {
  list:Array<Playlist>=[]
constructor(private api:VideoService,private route:ActivatedRoute) {
  this.api.getallList().subscribe({
    next:(value)=>{
        this.list=value
    },
  })
  this.route.params.subscribe(res=>{
   console.log( res['id']);
   
  })
}
}
