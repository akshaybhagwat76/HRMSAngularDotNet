import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { HigherAuthority } from '../models/higherAuthority.models';
import {environment} from "../../../environments/environment";

@Injectable({ providedIn: 'root' })
export class HigherAuthorityService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<HigherAuthority[]>(`${environment.url}/api/higherauthorites`);
    }
}
