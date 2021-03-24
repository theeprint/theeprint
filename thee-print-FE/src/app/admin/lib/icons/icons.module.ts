import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { FeatherModule } from 'angular-feather';
import { User, Edit , Mail , Trash2 , Users, DollarSign ,Camera, Heart, Home, Search, Bell, BellOff, AlertCircle, AlertTriangle, Calendar, FileText, Layout, Package, PieChart, Settings, CheckSquare, Clipboard, CheckCircle, ShoppingBag, Printer, Cast, ShoppingCart, Map, MapPin, Phone, Eye, Folder, Edit3, Plus, Upload, ArrowLeft, Menu, Check, Square, Key } from 'angular-feather/icons';


const icons = {
  User, Edit , Trash2 , Mail , Users, DollarSign,  Camera, Heart, Home, Search, Bell, BellOff, AlertCircle, AlertTriangle, Calendar, FileText, Layout, Package, PieChart, Settings, CheckSquare, Clipboard, CheckCircle, ShoppingBag, Printer, Cast, ShoppingCart, Map, MapPin, Phone, Eye, Folder, Edit3, Plus, Upload, ArrowLeft, Menu, 	Check, Square, Key
};

@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    FeatherModule.pick(icons)
  ],
  exports: [
    FeatherModule
  ]
})
export class IconsModule { }
