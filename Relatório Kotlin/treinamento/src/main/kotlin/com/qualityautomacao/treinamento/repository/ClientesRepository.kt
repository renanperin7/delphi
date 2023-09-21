package com.qualityautomacao.treinamento.repository

import com.qualityautomacao.treinamento.entity.ClientesEntity
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository
import org.springframework.data.repository.query.Param
import java.time.LocalDate
import javax.persistence.Tuple

interface ClientesRepository : CrudRepository<ClientesEntity, Long> {
    @Query(
        value = """ select cli.cli_nome_a as cliente,
                           count(distinct itm.pedido) as numero_vendas,
                           count(itm) as numero_itens,
                           count(distinct abt.controle) as numero_abastecimento,                           
                           sum(itm.quant) filter (where abt.controle is not null) as total_litros,
                           sum(itm.quant) filter (where abt.controle is null) as total_produto,
                           sum(itm.valitembruto) as total_bruto,
                           sum(itm.valitem) as total_liquido,
                           sum(itm.valitem) / count(distinct ped) as ticket_medio
                    from pedido ped 
                    inner join itemped itm on ped.codi = itm.pedido
                    inner join clientes cli on cli.cli_cod_a = ped.clie
                    left join abastecimentos abt on abt.controle = itm.idabast
                    where ped.dtfiscal between :DATA_INICIAL and :DATA_FINAL
                    group by cli_nome_a
                    order by ticket_medio desc  """, nativeQuery = true
    )
    fun relatorioCliente(
        @Param("DATA_INICIAL") dataInicial: LocalDate,
        @Param("DATA_FINAL") dataFinal: LocalDate
    ): List<Tuple>


    @Query(
        value = """
            select 
            cli.cli_nome_a as cliente,
            cast(last(ped.cupom) as varchar) as cupom_ultimo_pedido,
            last(ped.valortotal) as vl_ultimo_pedido,
            last(case when pra.tpprazo = 'CHEQUE' then che.bompar
                      when pra.tpprazo = 'CARTÃO' then car.bompa
                      else ped.dtfiscal end) as ultimo_recebimento,
            sum(ped.valortotal) as vl_total_comprado_cliente,
            count(pra.tpprazo) filter(where pra.tpprazo = 'CHEQUE') as vl_total_cheque,
            count(pra.tpprazo) filter(where pra.tpprazo = 'CARTAO') as vl_total_cartao,
            count(pra.tpprazo) filter(where pra.tpprazo = 'DINHEIRO') as vl_total_dinheiro,
            count(pra.tpprazo) filter(where pra.tpprazo = 'PRODUTO') as qts_produtos,
            sum(itm.quant) as total_litros
            from pedido ped
            inner join itemped itm on ped.codi = itm.pedido
            inner join prazos pra on pra.codpra = ped.formapg
            inner join clientes cli on cli.cli_cod_a = ped.clie
            inner join produtos pro on pro.codpro = itm.codpec
            left join cheques che on ped.codi = che.docu
            left join cartes car on ped.codi = car.docu
            where ped.dtfiscal between :DATA_INICIAL and :DATA_FINAL
            group by cli.cli_nome_a
            order by cliente
             """, nativeQuery = true
    )
    fun relatorioClienteUltimaVenda(
        @Param("DATA_INICIAL") dataInicial: LocalDate,
        @Param("DATA_FINAL") dataFinal: LocalDate
    ): List<Tuple>


    @Query(
        value = """
         select pro.nompro as nome_produto,
                max(itm.valitem) filter(where cast(to_char(ped.dtem, 'YYYY')as int) = :ANO_A) as valor_a,
                count(*) filter(where cast(to_char(ped.dtem, 'YYYY')as int) = :ANO_A) as quantidade_a,
                max(itm.valitem) filter(where cast(to_char(ped.dtem, 'YYYY')as int) = :ANO_B) as valor_b,
                count(*) filter(where cast(to_char(ped.dtem, 'YYYY')as int) = :ANO_B) as quantidade_b,           
                max(itm.valitem) filter(where cast(to_char(ped.dtem, 'YYYY')as int) = :ANO_A) - 
                max(itm.valitem) filter(where cast(to_char(ped.dtem, 'YYYY')as int) = :ANO_B)
                as diferenca,
                ((max(itm.valitem) filter(where cast(to_char(ped.dtem, 'YYYY')as int) = :ANO_A) - 
                max(itm.valitem) filter(where cast(to_char(ped.dtem, 'YYYY')as int) = :ANO_B)) * 100) /
                max(itm.valitem) filter(where cast(to_char(ped.dtem, 'YYYY')as int) = :ANO_A)
                as perc_diferenca
        from produtos pro 
        inner join itemped itm on itm.codpec = pro.codpro
        inner join pedido ped on ped.codi  = itm.pedido 
        where tpprod = 'PRODUTO'
        group by pro.nompro
        order by nome_produto
 
        """, nativeQuery = true
    )
    fun relatorioCurvaAbc(
        @Param("ANO_A") anoA: Int,
        @Param("ANO_B") anoB: Int
    ): List<Tuple>

    @Query(
            value = """ 
                 select 
                    f.nome as nome_vendedor, 
                    i.codpec as codigo_produto, 
                    p.nompro as nome_produto,
                    i.dtfiscal as data_venda,
                    ROUND(SUM(i.quant)) as quantidade_diaria, 
	                ROUND(SUM(i.valunit * i.quant), 2) as vendas_diarias
                from itemped i 
                join produtos p on i.codpec = p.codpro 
                join funcionarios f on i.vei_ds_funcionario = f.matr
                where f.nome ilike %:NOME% and i.dtfiscal between :DATA_INICIAL and :DATA_FINAL
                group by f.nome, p.nompro, i.codpec, i.dtfiscal
                order by i.dtfiscal
            """, nativeQuery = true
    )
    fun relatorioVendas(
            @Param("NOME") nome: String,
            @Param("DATA_INICIAL") dataInicial: LocalDate,
            @Param("DATA_FINAL") dataFinal: LocalDate
    ): List<Tuple>

}
