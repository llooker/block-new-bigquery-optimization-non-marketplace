project_name: "gcp_audit"

################# Constants #################

constant: CONNECTION_NAME {
  value: "looker_application"
  export: override_required
}

constant: SCHEMA_NAME {
  value: "looker_app_audit_log"
  export: override_required
}

constant: AUDIT_LOG_EXPORT_TABLE_NAME {
  value: "cloudaudit_googleapis_com_data_access"
  export: override_required
}

constant: CONFIG_PROJECT_NAME {
  value: "block-new-bigquery-optimization-config"
  export: override_required
}

################ Dependencies ################

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"

  override_constant: SCHEMA_NAME {
    value: "@{SCHEMA_NAME}"
  }

  override_constant: AUDIT_LOG_EXPORT_TABLE_NAME {
    value: "@{AUDIT_LOG_EXPORT_TABLE_NAME}"
  }
}
