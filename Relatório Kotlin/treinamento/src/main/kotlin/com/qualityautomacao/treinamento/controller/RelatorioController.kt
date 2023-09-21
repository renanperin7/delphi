package com.qualityautomacao.treinamento.controller

import com.qualityautomacao.treinamento.extensions.toDataSource
import com.qualityautomacao.treinamento.repository.ClientesRepository
import net.sf.jasperreports.engine.JasperExportManager
import net.sf.jasperreports.engine.JasperFillManager
import net.sf.jasperreports.engine.JasperPrint
import org.springframework.core.io.ClassPathResource
import org.springframework.http.HttpStatus
import org.springframework.http.MediaType
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.ResponseStatus
import org.springframework.web.bind.annotation.RestController
import java.time.LocalDate
import java.util.*

@RestController
@RequestMapping("relatorio")
class RelatorioController(
    private val clientesRepository: ClientesRepository,
) {
    @GetMapping("cliente")
    fun relatorioCliente(dataInicial: LocalDate, dataFinal: LocalDate): ResponseEntity<ByteArray> {
        val dataSource = clientesRepository.relatorioCliente(dataInicial, dataFinal).toDataSource()
        val parametros = mutableMapOf<String, Any?>("REPORT_LOCALE" to Locale.forLanguageTag("pt-BR"))
        val relatorio = JasperExportManager.exportReportToPdf(
            ClassPathResource("/relatorio/relatorio_cliente.jasper").inputStream.use {
                JasperFillManager.fillReport(it, parametros, dataSource)
            } as JasperPrint)
        return ResponseEntity.ok().contentType(MediaType.APPLICATION_PDF).body(relatorio)
    }

    @GetMapping("cliente_ultima_venda")
    fun relatorioClienteUltimaVenda(dataInicial: LocalDate, dataFinal: LocalDate): ResponseEntity<ByteArray> {
        val dataSource = clientesRepository.relatorioClienteUltimaVenda(dataInicial, dataFinal).toDataSource()
        val parametros = mutableMapOf<String, Any?>("REPORT_LOCALE" to Locale.forLanguageTag("pt-BR"))
        val relatorio = JasperExportManager.exportReportToPdf(
            ClassPathResource("/relatorio/relatorio_cliente_ultima_venda.jasper").inputStream.use {
                JasperFillManager.fillReport(it, parametros, dataSource)
            } as JasperPrint)
        return ResponseEntity.ok().contentType(MediaType.APPLICATION_PDF).body(relatorio)
    }

    @GetMapping("curva_abc")
    fun relatorioCurvaAbc(anoA: Int, anoB: Int): ResponseEntity<ByteArray> {
        val dataSource = clientesRepository.relatorioCurvaAbc(anoA, anoB).toDataSource()
        val parametros = mutableMapOf<String, Any?>("REPORT_LOCALE" to Locale.forLanguageTag("pt-BR"))
        val relatorio = JasperExportManager.exportReportToPdf(
            ClassPathResource("/relatorio/relatorio_curva_abc.jasper").inputStream.use {
                JasperFillManager.fillReport(it, parametros, dataSource)
            } as JasperPrint)
        return ResponseEntity.ok().contentType(MediaType.APPLICATION_PDF).body(relatorio)
    }

    @GetMapping("vendas")
    fun relatorioVendas(nome: String, dataInicial: LocalDate, dataFinal: LocalDate): ResponseEntity<ByteArray> {
        val dataSource = clientesRepository.relatorioVendas(nome, dataInicial, dataFinal).toDataSource()
        val parametros = mutableMapOf<String, Any?>("REPORT_LOCALE" to Locale.forLanguageTag("pt-BR"))
        val relatorio = JasperExportManager.exportReportToPdf(
                ClassPathResource("/relatorio/relatorio_vendas.jasper").inputStream.use {
                    JasperFillManager.fillReport(it, parametros, dataSource)
                } as JasperPrint)
        return ResponseEntity.ok().contentType(MediaType.APPLICATION_PDF).body(relatorio)
    }

    @GetMapping("ok")
    @ResponseStatus(HttpStatus.I_AM_A_TEAPOT)
    fun tea() {

    }
}
