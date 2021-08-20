import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { environment } from "../../../environments/environment";
import { ThirdParty } from '../models/ThirdParty.model';

@Injectable({ providedIn: 'root' })
export class ThirdpartyService {
  constructor(private http: HttpClient) {
  }

  getAll() {
    return this.http.get<ThirdParty[]>(`${environment.url}/api/thirdparty`);
  }
}
