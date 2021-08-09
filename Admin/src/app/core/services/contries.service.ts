import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Contries } from '../models/contries.models';
import {environment} from "../../../environments/environment";

@Injectable({ providedIn: 'root' })
export class ContriesService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<Contries[]>(`${environment.url}/api/countries`);
    }
}
