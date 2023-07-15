import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { VideoModel } from '../Models/video.model';
import { Observable } from 'rxjs';
import { Playlist, Playlistmodel } from '../Models/playlistmodel';
import { Videolist } from '../Models/videoListModel';

@Injectable({
  providedIn: 'root'
})
export class VideoService {
  url:string="https://localhost:7169/api"
  constructor(private http:HttpClient) { }
  getVideos():Observable<VideoModel[]>{
    return this.http.get<Array<VideoModel>>(this.url+"/Videos")
  }
  getPlaylists():Observable<Array<Playlistmodel>>{
    return this.http.get<Array<Playlistmodel>>(this.url+"/PlayList")
  }
  getallList():Observable<Array<Playlist>>{
    return this.http.get<Array<Playlist>>(this.url+"/VideosAndList")
  }
  Createplaylist(obj:{name:string}):Observable<{message:string}>{
    return this.http.post<{message:string}>(this.url+"/PlayList",obj)
  }
  AddToplaylist(value:Videolist):Observable<{message:string}>{
    return this.http.post<{message:string}>(this.url+"/VideosAndList",value)
  }
}
