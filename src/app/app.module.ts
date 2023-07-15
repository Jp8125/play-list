import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { PlayListsComponent } from './Components/play-lists/play-lists.component';
import { VideosComponent } from './Components/videos/videos.component';
import { FilterVideosComponent } from './Components/filter-videos/filter-videos.component';
import { NavbarComponent } from './Components/navbar/navbar.component';
import { PlayerComponent } from './Components/player/player.component';
import {HttpClientModule} from '@angular/common/http'
import { NgxPaginationModule } from 'ngx-pagination';
import { FormsModule } from '@angular/forms';

@NgModule({
  declarations: [
    AppComponent,
    PlayListsComponent,
    VideosComponent,
    FilterVideosComponent,
    NavbarComponent,
    PlayerComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    NgxPaginationModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
