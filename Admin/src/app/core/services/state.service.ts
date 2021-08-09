import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { State } from '../models/state.models';
import {environment} from "../../../environments/environment";

@Injectable({ providedIn: 'root' })
export class StateService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<State[]>(`${environment.url}/api/states`);
    }
}
