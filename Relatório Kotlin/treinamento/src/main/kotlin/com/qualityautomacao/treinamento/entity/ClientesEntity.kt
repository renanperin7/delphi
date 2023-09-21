package com.qualityautomacao.treinamento.entity

import java.math.BigDecimal
import java.sql.Date
import javax.persistence.*

@Entity
@Table(name = "clientes", schema = "public", catalog = "treinamento")
class ClientesEntity {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "cli_cod_a")
    var cliCodA: String? = null

    @Column(name = "cli_nome_a")
    var cliNomeA: String? = null

    @Column(name = "cli_rsocial_a")
    var cliRsocialA: String? = null

    @Column(name = "cli_pessoa_a")
    var cliPessoaA: String? = null

    @Column(name = "telefone")
    var telefone: String? = null

    @Column(name = "fax")
    var fax: String? = null

    @Column(name = "endereco")
    var endereco: String? = null

    @Column(name = "bairro")
    var bairro: String? = null

    @Column(name = "cidade")
    var cidade: String? = null

    @Column(name = "estado")
    var estado: String? = null

    @Column(name = "cep")
    var cep: String? = null

    @Column(name = "obs")
    var obs: String? = null

    @Column(name = "contato")
    var contato: String? = null

    @Column(name = "cgc")
    var cgc: String? = null

    @Column(name = "inscest")
    var inscest: String? = null

    @Column(name = "cpf")
    var cpf: String? = null

    @Column(name = "identidade")
    var identidade: String? = null

    @Column(name = "orgemis")
    var orgemis: String? = null

    @Column(name = "dtnasc")
    var dtnasc: Date? = null

    @Column(name = "naturalidade")
    var naturalidade: String? = null

    @Column(name = "estcivil")
    var estcivil: String? = null

    @Column(name = "conjuge")
    var conjuge: String? = null

    @Column(name = "pai")
    var pai: String? = null

    @Column(name = "mae")
    var mae: String? = null

    @Column(name = "trabemp")
    var trabemp: String? = null

    @Column(name = "trabtel")
    var trabtel: String? = null

    @Column(name = "dtinclu")
    var dtinclu: Date? = null

    @Column(name = "empresta")
    var empresta: String? = null

    @Column(name = "cobranca")
    var cobranca: String? = null

    @Column(name = "vallimc")
    var vallimc: BigDecimal? = null

    @Column(name = "emitenota")
    var emitenota: String? = null

    @Column(name = "qtdenota")
    var qtdenota: Int? = null

    @Column(name = "requisicao")
    var requisicao: String? = null

    @Column(name = "juros")
    var juros: String? = null

    @Column(name = "diasuspen")
    var diasuspen: Int? = null

    @Column(name = "codpra")
    var codpra: String? = null

    @Column(name = "dtsuspen")
    var dtsuspen: Date? = null

    @Column(name = "valcred")
    var valcred: BigDecimal? = null

    @Column(name = "referencia")
    var referencia: String? = null

    @Column(name = "celular")
    var celular: String? = null

    @Column(name = "email")
    var email: String? = null

    @Column(name = "obsmemo")
    var obsmemo: String? = null

    @Column(name = "editaagregados")
    var editaagregados: String? = null

    @Column(name = "vallimc_litros")
    var vallimcLitros: BigDecimal? = null

    @Column(name = "cliente_para_cobranca")
    var clienteParaCobranca: String? = null

    @Column(name = "exigeplaca")
    var exigeplaca: String? = null

    @Column(name = "exigekm")
    var exigekm: String? = null

    @Column(name = "exigeordem")
    var exigeordem: String? = null

    @Column(name = "permitealterarprazo")
    var permitealterarprazo: String? = null

    @Column(name = "permitecarrosforafrota")
    var permitecarrosforafrota: String? = null

    @Column(name = "endereco_cobranca")
    var enderecoCobranca: String? = null

    @Column(name = "bairro_cobranca")
    var bairroCobranca: String? = null

    @Column(name = "cidade_cobranca")
    var cidadeCobranca: String? = null

    @Column(name = "estado_cobranca")
    var estadoCobranca: String? = null

    @Column(name = "cep_cobranca")
    var cepCobranca: String? = null

    @Column(name = "integracao")
    var integracao: Int? = null

    @Column(name = "diasbloqautomatico")
    var diasbloqautomatico: Int? = null

    @Column(name = "requercartao")
    var requercartao: String? = null

    @Column(name = "usacreditoicms")
    var usacreditoicms: String? = null

    @Column(name = "senha_obrigatoria")
    var senhaObrigatoria: String? = null

    @Column(name = "participa_premiacao")
    var participaPremiacao: String? = null

    @Column(name = "acumulado")
    var acumulado: Int? = null

    @Column(name = "pontuacao")
    var pontuacao: Int? = null

    @Column(name = "ccfcodigo")
    var ccfcodigo: Int? = null

    @Column(name = "rec_inf_email")
    var recInfEmail: String? = null

    @Column(name = "natural")
    var natural: String? = null

    @Column(name = "tipoprazo")
    var tipoprazo: String? = null

    @Column(name = "credito_ilimitado")
    var creditoIlimitado: String? = null

    @Column(name = "cgccpf")
    var cgccpf: String? = null

    @Column(name = "cod_cidade")
    var codCidade: Int? = null

    @Column(name = "numero_endereco")
    var numeroEndereco: String? = null

    @Column(name = "codigopais")
    var codigopais: Int? = null

    @Column(name = "codigo_fiscal")
    var codigoFiscal: String? = null

    @Column(name = "observacao")
    var observacao: String = ""

    @Column(name = "profissao")
    var profissao: String? = null

    @Column(name = "identcliente")
    var identcliente: String? = null

    @Column(name = "banco")
    var banco: String? = null

    @Column(name = "agencia")
    var agencia: String? = null

    @Column(name = "modelo")
    var modelo: String? = null

    @Column(name = "avisofrentista")
    var avisofrentista: String? = null

    @Column(name = "inscsuframa")
    var inscsuframa: String? = null

    @Column(name = "rec_boleto_email")
    var recBoletoEmail: String? = null

    @Column(name = "rec_fatura_email")
    var recFaturaEmail: String? = null

    @Column(name = "cfop")
    var cfop: String? = null

    @Column(name = "idq")
    var idq: Int? = null

    @Column(name = "ativo")
    var ativo: String? = null

    @Column(name = "grupoathenas")
    var grupoathenas: Int? = null

    @Column(name = "subgrupoathenas")
    var subgrupoathenas: Int? = null

    @Column(name = "limite_por_agregado")
    var limitePorAgregado: String? = null

    @Column(name = "cli_vl_limite_disponivel")
    var cliVlLimiteDisponivel: BigDecimal? = null

    @Column(name = "motsuspen")
    var motsuspen: String? = null

    @Column(name = "permite_emprestimo")
    var permiteEmprestimo: String? = null

    @Column(name = "cli_vl_limite_disponivel_litro")
    var cliVlLimiteDisponivelLitro: BigDecimal? = null

    @Column(name = "cli_fl_cliente_identificado")
    var cliFlClienteIdentificado: String? = null

    @Column(name = "cun_vl_saldo_pre_pago")
    var cunVlSaldoPrePago: BigDecimal? = null

    @Column(name = "cli_ds_md5")
    var cliDsMd5: String? = null

    @Column(name = "cli_fl_nota_simples_fatu_auto")
    var cliFlNotaSimplesFatuAuto: String? = null

    @Column(name = "cli_cd_documento_emissao")
    var cliCdDocumentoEmissao = 0

    @Column(name = "cli_fl_segunda_via_promissoria")
    var cliFlSegundaViaPromissoria: String? = null

    @Column(name = "cli_bl_emite_nfce_identif")
    var isCliBlEmiteNfceIdentif = false

    @Column(name = "cli_ds_complemento")
    var cliDsComplemento: String? = null

    @Column(name = "cli_fl_empenho_obrigatorio")
    var cliFlEmpenhoObrigatorio: String? = null

    @Column(name = "pontuacao_acumulada")
    var pontuacaoAcumulada: BigDecimal? = null

    @Column(name = "cli_cd_quant_prod_distintos")
    var cliCdQuantProdDistintos = 0

    @Column(name = "cli_fl_agrupar_itens_nfe")
    var cliFlAgruparItensNfe: String? = null

    @Column(name = "cli_fl_exige_centro_custo")
    var cliFlExigeCentroCusto: String? = null

    @Column(name = "cli_fl_venda_como_despesa")
    var cliFlVendaComoDespesa: String? = null

    @Column(name = "cli_fl_destaca_acresc_desconto")
    var cliFlDestacaAcrescDesconto: String? = null

    @Column(name = "cli_fl_pontuar_motoristas")
    var cliFlPontuarMotoristas: String? = null

    @Column(name = "cli_cd_documentos_reinicio")
    var cliCdDocumentosReinicio = 0

    @Column(name = "codgrucli")
    var codgrucli: Int? = null

    @Column(name = "cli_ds_obs_promissoria")
    var cliDsObsPromissoria: String? = null

    @Column(name = "cli_cd_plano_conta_gerencial")
    var cliCdPlanoContaGerencial: Int? = null

    @Column(name = "exigeassinatura")
    var exigeassinatura: String? = null
}
