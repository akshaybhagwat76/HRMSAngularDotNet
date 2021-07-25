import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Zone } from '../models/zone.models';

@Injectable({ providedIn: 'root' })
export class ZoneService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<Zone[]>(`http://localhost:64156/api/zones`);
    }
}
