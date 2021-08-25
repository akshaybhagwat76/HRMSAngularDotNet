import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import {environment} from "../../../environments/environment";
import { IdentityType } from '../models/identity-type.models';

@Injectable({
  providedIn: 'root'
})
export class IdentityTypeService {

  constructor(private http: HttpClient) { }

  getAll() {
    return this.http.get<IdentityType[]>(`${environment.url}/api/IdentityType`);
  }
}
