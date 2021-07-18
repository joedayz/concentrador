import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ButtonModule } from 'primeng/button';
import { InputTextModule } from 'primeng/inputtext';
import {MenubarModule} from 'primeng/menubar';
import {CardModule} from 'primeng/card';
import {SliderModule} from 'primeng/slider';
import {DropdownModule} from 'primeng/dropdown';
import {InputSwitchModule} from 'primeng/inputswitch';
import {TableModule} from 'primeng/table';
import {SelectButtonModule} from 'primeng/selectbutton';
import {RadioButtonModule} from 'primeng/radiobutton';
import {TooltipModule} from 'primeng/tooltip';


@NgModule({
  declarations: [],
  imports: [
    CommonModule
  ],
  exports:[
    ButtonModule,
    InputTextModule,
    MenubarModule,
    CardModule,
    SliderModule,
    DropdownModule,
    InputSwitchModule,
    TableModule,
    SelectButtonModule,
    RadioButtonModule,
    TooltipModule
  ]
})
export class PrimeNgModule { }
