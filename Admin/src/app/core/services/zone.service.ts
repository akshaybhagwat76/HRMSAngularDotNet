import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Zone } from '../models/zone.models';
import {environment} from "../../../environments/environment";

@Injectable({ providedIn: 'root' })
export class ZoneService {
    constructor(private http: HttpClient) { }
    getAll() {
        // return this.http.get<Zone[]>(`http://localhost:64156/api/zones`);
        return this.http.get<Zone[]>(`${environment.url}/api/zones`);
    }
}
