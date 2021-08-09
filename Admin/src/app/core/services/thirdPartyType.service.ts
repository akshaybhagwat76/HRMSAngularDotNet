import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';

import {ThirdPartyType} from '../models/thirdPartyType.models';
import {environment} from "../../../environments/environment";

@Injectable({providedIn: 'root'})
export class ThirdPartyTypeService {
  constructor(private http: HttpClient) {
  }

  getAll() {
    return this.http.get<ThirdPartyType[]>(`${environment.url}/api/thirdpartytype`);
  }
}
