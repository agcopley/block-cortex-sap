# The name of this view in Looker is "siifolio"
view: siifolio {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `@{GCP_PROJECT}.@{REPORTING_DATASET}.FolioSII`
    ;;

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Accounting Document Number Belnr" in Explore.

  fields_hidden_by_default: no

  dimension: key {
    type: string
    primary_key: yes
    sql: CONCAT(${client_mandt},${billing_document_vbeln});;
  }

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: billing_document_vbeln {
    type: string
    sql: ${TABLE}.BillingDocument_VBELN ;;
  }

  dimension: sales_organization_vkorg {
    type: string
    sql: ${TABLE}.SalesOrganization_VKORG ;;
  }

  dimension: sii_document_type_tipodte {
    type: string
    label: "SII Document Code"
    sql: ${TABLE}.SiiDocumentType_TIPODTE ;;
  }

  dimension: sii_folio_number_folio {
    type: string
    label: "SII Folio Number"
    sql: ${TABLE}.SiiFolioNumber_FOLIO ;;
  }

}
