import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Cast } from '../models/cast.models';
import {environment} from "../../../environments/environment";

@Injectable({ providedIn: 'root' })
export class CastService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<Cast[]>(`${environment.url}/api/casts`);
    }
}
