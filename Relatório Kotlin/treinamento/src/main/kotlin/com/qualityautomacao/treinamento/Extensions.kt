package com.qualityautomacao.treinamento.extensions

import net.sf.jasperreports.engine.JRDataSource
import net.sf.jasperreports.engine.JREmptyDataSource
import net.sf.jasperreports.engine.data.ListOfArrayDataSource
import javax.persistence.Tuple

fun List<Tuple>.toDataSource(): JRDataSource {
    if (isEmpty()) return JREmptyDataSource()

    return ListOfArrayDataSource(
        this.map { it.toArray() },
        this.first().elements.map { it.alias }.toTypedArray()
    )
}

fun Tuple.toMap(KeyMapper: (String) -> String = {it} ): MutableMap<String, Any> {
    val map = mutableMapOf<String, Any>()
    elements.forEach{
        map[KeyMapper(it.alias)] = this[it.alias]
    }
    return map
}