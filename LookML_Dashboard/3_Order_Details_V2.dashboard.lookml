---
- dashboard: sales_order_details_v2
  title: Sales Order Details V2
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: cfeelUDMrdAV2zGBICTGkO
  elements:
  - name: Order Details
    type: text
    title_text: Order Details
    subtitle_text: <font color="#c1c1c1">What is my Order Status ?</font>
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 2
  - title: Sales Order Quantity and Value
    name: Sales Order Quantity and Value
    model: cortex_sap_operational
    explore: sales_orders
    type: looker_grid
    fields: [sales_orders.sales_document_vbeln, sales_orders.sales_order_credit_note,
      sales_orders.item_posnr, siifolio.sii_folio_number_folio, materials_md.material_text_maktx,
      sales_orders.sales_order_status, sales_orders.cumulative_order_quantity_kwmeng,
      sales_orders.base_unit_of_measure_meins, currency_conversion_new.ukurs, sales_orders.sales_order_value_line_item_source_currency,
      sales_orders.currency_waerk, sales_orders.sales_order_value_glob_curr_doc_type,
      currency_conversion_new.tcurr, embarcation.embarcation_date_date, sales_orders.creation_date_erdat_date,
      deliveries.date__proof_of_delivery___podat_date, deliveries.delivery_date_lfdat_date,
      sales_orders.name_of_orderer_bname, plants.plant_werks_name, billing.incoterms_part2_inco2,
      billing.storage_location_lgort, billing.sold_to_party_kunag, billing.net_value_netwr,
      billing.billing_document_vbeln, billing.accounting_document_number_belnr, siifolio.sii_document_type_tipodte,
      sales_orders.sales_document_type_auart, billing.total_actual_billed_quantity_fkimg,
      sales_orders.max_sold_to_party_name, sales_orders.max_ship_to_party_name, sales_orders.max_bill_to_party_name]
    filters: {}
    sorts: [sales_orders.item_posnr desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    pinned_columns:
      "$$$_row_numbers_$$$": left
    column_order: ["$$$_row_numbers_$$$", sales_orders.sales_document_vbeln, sales_orders.item_posnr,
      materials_md.material_text_maktx, sales_orders.max_sold_to_party_name, sales_orders.max_ship_to_party_name,
      sales_orders.max_bill_to_party_name, sales_orders.creation_date_erdat_date,
      embarcation.embarcation_date_date, deliveries.delivery_date_lfdat_date, deliveries.date__proof_of_delivery___podat_date,
      sales_orders.sales_order_status, sales_orders.cumulative_order_quantity_kwmeng,
      sales_orders.base_unit_of_measure_meins, currency_conversion_new.ukurs, sales_orders.sales_order_value_line_item_source_currency,
      sales_orders.currency_waerk, sales_orders.sales_order_value_glob_curr, sales_orders.sales_order_value_glob_curr_doc_type,
      currency_conversion_new.tcurr, siifolio.sii_folio_number_folio, sales_orders.name_of_orderer_bname,
      plants.plant_werks_name, billing.incoterms_part2_inco2, billing.storage_location_lgort,
      billing.sold_to_party_kunag, billing.net_value_netwr, billing.billing_document_vbeln,
      billing.accounting_document_number_belnr, siifolio.sii_document_type_tipodte,
      billing.total_actual_billed_quantity_fkimg, sales_orders.sales_document_type_auart]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      sales_orders.sales_document_vbeln: Sales Order
      sales_orders.item_posnr: Sales Order Line Item
      materials_md.material_text_maktx: Product
      customers_md.name1_name1: Sold to Party
      customers_md.name2_name2: Ship to Party
      customers_md.name3_name3: Bill to Party
      sales_orders.sales_order_status: Order Status
      sales_orders.cumulative_order_quantity_kwmeng: Sales Order Qty
      sales_orders.base_unit_of_measure_meins: Base UoM
      currency_conversion_new.ukurs: Exchange Rate
      sales_orders.sales_order_value_line_item_source_currency: Sales Order Value
        Local Currency
      sales_orders.currency_waerk: Local Currency Key
      sales_orders.sales_order_value_glob_curr: Sales Order Value Global Currency
      currency_conversion_new.tcurr: Global Currency
      sales_orders.creation_date_erdat_date: Creation Date
      deliveries.date__proof_of_delivery___podat_date: Actual Delivery Date
      deliveries.delivery_date_lfdat_date: Requested Delivery date
      sales_orders.max_sold_to_party_name: Sold to Party
      sales_orders.max_ship_to_party_name: Ship to Party
      sales_orders.max_bill_to_party_name: Bill to Party
    series_column_widths:
      sales_orders.sales_document_vbeln: 111.24000000000001
    series_cell_visualizations: {}
    defaults_version: 1
    minimum_column_width: 75
    listen:
      Division: divisions_md.division_name_vtext
      Currency: currency_conversion_new.tcurr
      Region: countries_md.country_name_landx
      Sales Org: sales_organizations_md.sales_org_name_vtext
      Distribution Channel: distribution_channels_md.distribution_channel_name_vtext
      Product: materials_md.material_text_maktx
      Invoice Document Type: sales_orders.sales_document_type_auart
      Sales Order Status: sales_orders.sales_order_status
      Sales Type: sales_orders.sales_order_credit_note
      Year: sales_orders.header_creation_date_erdat_date
    row: 4
    col: 0
    width: 24
    height: 7
  - title: New Tile
    name: New Tile
    model: cortex_sap_operational
    explore: sales_orders
    type: single_value
    fields: [sales_orders.dash_nav]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Division: divisions_md.division_name_vtext
      Currency: currency_conversion_new.tcurr
      Region: countries_md.country_name_landx
      Sales Org: sales_organizations_md.sales_org_name_vtext
      Distribution Channel: distribution_channels_md.distribution_channel_name_vtext
      Product: materials_md.material_text_maktx
      Invoice Document Type: sales_orders.sales_document_type_auart
      Sales Order Status: sales_orders.sales_order_status
      Sales Type: sales_orders.sales_order_credit_note
      Year: sales_orders.header_creation_date_erdat_date
    row: 0
    col: 0
    width: 24
    height: 2
  filters:
  - name: Year
    title: Year
    type: field_filter
    default_value: this year to second
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: cortex_sap_operational
    explore: sales_orders
    listens_to_filters: []
    field: sales_orders.header_creation_date_erdat_date
  - name: Currency
    title: Currency
    type: field_filter
    default_value: USD
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: cortex_sap_operational
    explore: sales_orders
    listens_to_filters: []
    field: currency_conversion_new.tcurr
  - name: Region
    title: Region
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_sap_operational
    explore: sales_orders
    listens_to_filters: []
    field: countries_md.country_name_landx
  - name: Sales Org
    title: Sales Org
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_sap_operational
    explore: sales_orders
    listens_to_filters: []
    field: sales_organizations_md.sales_org_name_vtext
  - name: Distribution Channel
    title: Distribution Channel
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_sap_operational
    explore: sales_orders
    listens_to_filters: []
    field: distribution_channels_md.distribution_channel_name_vtext
  - name: Division
    title: Division
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_sap_operational
    explore: sales_orders
    listens_to_filters: []
    field: divisions_md.division_name_vtext
  - name: Product
    title: Product
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_sap_operational
    explore: sales_orders
    listens_to_filters: []
    field: materials_md.material_text_maktx
  - name: Invoice Document Type
    title: Invoice Document Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: sales_orders
    listens_to_filters: []
    field: sales_orders.sales_document_type_auart
  - name: Sales Order Status
    title: Sales Order Status
    type: field_filter
    default_value: Closed
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: cortex_sap_operational
    explore: sales_orders
    listens_to_filters: []
    field: sales_orders.sales_order_status
  - name: Sales Type
    title: Sales Type
    type: field_filter
    default_value: S/O
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: cortex_sap_operational
    explore: sales_orders
    listens_to_filters: []
    field: sales_orders.sales_order_credit_note
