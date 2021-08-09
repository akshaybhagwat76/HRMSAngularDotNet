import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { WorkingStatus } from '../models/workingStatus.models';
import {environment} from "../../../environments/environment";

@Injectable({ providedIn: 'root' })
export class WorkingStatusService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<WorkingStatus[]>(`${environment.url}/api/status`);
    }
}
