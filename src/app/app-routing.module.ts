import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { PlayListsComponent } from './Components/play-lists/play-lists.component';
import { VideosComponent } from './Components/videos/videos.component';
import { FilterVideosComponent } from './Components/filter-videos/filter-videos.component';
import { PlayerComponent } from './Components/player/player.component';

const routes: Routes = [
  { path: 'play-lists', component: PlayListsComponent },
  { path: 'videos', component: VideosComponent ,children:[
    { path: 'vid/:id', component: PlayerComponent },
  ]},
  { path: 'palylist/:id', component: FilterVideosComponent,children:[
    { path: 'video/:id', component: PlayerComponent },
  ]},
  
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
