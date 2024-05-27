# The name of this view in Looker is "Embarcation"
view: embarcation {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `@{GCP_PROJECT}.@{REPORTING_DATASET}.SalesEmbarcationDate`
    ;;


  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Accounting Document Number Belnr" in Explore.

  fields_hidden_by_default: no

  dimension: key {
    type: string
    primary_key: yes
    sql: CONCAT(${client_mandt},${embarcation_document_vbeln},${embarcation_item_posnr});;
  }

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.MANDT ;;
  }

  dimension: embarcation_document_vbeln {
    type: string
    sql: ${TABLE}.VBELN ;;
  }

  dimension: embarcation_item_posnr {
    type: string
    sql: ${TABLE}.POSNR ;;
  }

  dimension_group: embarcation_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_embarque ;;
    hidden: no
  }
}
