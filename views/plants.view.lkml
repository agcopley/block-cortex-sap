# The name of this view in Looker is "siifolio"
view: plants {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `@{GCP_PROJECT}.@{REPORTING_DATASET}.PlantsMD`
    ;;

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Accounting Document Number Belnr" in Explore.

  fields_hidden_by_default: no

  dimension: key {
    type: string
    primary_key: yes
    sql: CONCAT(${client_mandt},${plant_werks});;
  }

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }

  dimension: plant_werks {
    type: string
    sql: ${TABLE}.Plant_WERKS ;;
  }

  dimension: plant_werks_name {
    type: string
    label: "Port_Airport"
    sql: ${TABLE}.Name_NAME1 ;;
  }


}
