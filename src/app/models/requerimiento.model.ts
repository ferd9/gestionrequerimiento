export interface Solicitante {
  idSolicitante: number;
  nombres: string;
  apellidos: string;
  area: string;
}

export interface CoordinadorHelpdesk {
  idCoordinador: number;
  nombre: string;
}

export interface AnalistaTI {
  idAnalista: number;
  nombre: string;
  sistemaEspecialidad: string;
}

export interface Requerimiento {
  idRequerimiento?: number;
  nombreSolicitud: string;
  descripcionSolicitud: string;
  anexo: string;
  fechaSolicitud: Date;
  solicitante: Solicitante;
  coordinador: CoordinadorHelpdesk;
  analista: AnalistaTI;
}
