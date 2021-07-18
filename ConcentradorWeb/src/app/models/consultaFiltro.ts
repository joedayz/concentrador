export class ConsultaFiltro{

    public ConsultaFiltro(codigo: number){
        this.CodigoProductoFinanciero = codigo;
    }

    CodigoProductoFinanciero: number;
    TipoMonedaId: string;
    MontoMaximoAceptable: string;
    PlazoMinimoMes: string;
    IngresoPermitido: string;
    DepartamentoId: string;
    TipoInstitucionId: string;
    MontoMaximoDeposito: string;
    PlazoMaximoDia: string;

    public setFiltroDeposito(codigo: number, idTipoMonda: string, MontoMaximoDeposito: string,
        PlazoMaximoDia: string, DepartamentoId: string, TipoInstitucionId:string){
            this.CodigoProductoFinanciero = codigo;
            this.TipoMonedaId = idTipoMonda;
            this.MontoMaximoDeposito = MontoMaximoDeposito;
            this.PlazoMaximoDia = PlazoMaximoDia;
            this.DepartamentoId = DepartamentoId;
            this.TipoInstitucionId = TipoInstitucionId;
    }
    public setFiltroPrestamo(codigo: number, TipoMonedaId: string, MontoMaximoAceptable: string,
        PlazoMinimoMes: string, DepartamentoId:string, TipoInstitucionId: string, IngresoPermitido: string){
            this.CodigoProductoFinanciero = codigo;
            this.TipoMonedaId = TipoMonedaId;
            this.MontoMaximoAceptable = MontoMaximoAceptable;
            this.PlazoMinimoMes = PlazoMinimoMes;
            this.DepartamentoId = DepartamentoId;
            this.TipoInstitucionId = TipoInstitucionId;
            this.IngresoPermitido = IngresoPermitido;
    }
}
