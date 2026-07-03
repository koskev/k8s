{
  new(terraformName, name, interval_seconds, path_prefix, storage_type):: {
    _type:: 'tf',
    resource+: {
      vault_raft_snapshot_agent_config+: { [terraformName]+: {
        name: name,
        interval_seconds: interval_seconds,
        path_prefix: path_prefix,
        storage_type: storage_type,
      } },
    },
    withAzureEndpoint(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { azure_endpoint: value } },
      },
    },
    withGoogleServiceAccountKey(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { google_service_account_key: value } },
      },
    },
    withName(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { name: value } },
      },
    },
    withAwsS3EnableKms(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_s3_enable_kms: value } },
      },
    },
    withAutoloadEnabled(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { autoload_enabled: value } },
      },
    },
    withFilePrefix(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { file_prefix: value } },
      },
    },
    withLocalMaxSpace(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { local_max_space: value } },
      },
    },
    withAwsS3ServerSideEncryption(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_s3_server_side_encryption: value } },
      },
    },
    withAwsS3Endpoint(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_s3_endpoint: value } },
      },
    },
    withAwsS3KmsKey(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_s3_kms_key: value } },
      },
    },
    withAwsSessionToken(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_session_token: value } },
      },
    },
    withAwsSecretAccessKey(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_secret_access_key: value } },
      },
    },
    withAzureAccountKey(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { azure_account_key: value } },
      },
    },
    withAwsS3DisableTls(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_s3_disable_tls: value } },
      },
    },
    withAzureClientId(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { azure_client_id: value } },
      },
    },
    withGoogleGcsBucket(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { google_gcs_bucket: value } },
      },
    },
    withAzureAccountName(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { azure_account_name: value } },
      },
    },
    withAwsS3Bucket(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_s3_bucket: value } },
      },
    },
    withAzureContainerName(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { azure_container_name: value } },
      },
    },
    withGoogleDisableTls(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { google_disable_tls: value } },
      },
    },
    withAwsS3ForcePathStyle(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_s3_force_path_style: value } },
      },
    },
    withIntervalSeconds(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { interval_seconds: value } },
      },
    },
    withPathPrefix(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { path_prefix: value } },
      },
    },
    withRetain(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { retain: value } },
      },
    },
    withId(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { id: value } },
      },
    },
    withAzureBlobEnvironment(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { azure_blob_environment: value } },
      },
    },
    withNamespace(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { namespace: value } },
      },
    },
    withAzureAuthMode(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { azure_auth_mode: value } },
      },
    },
    withAwsAccessKeyId(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_access_key_id: value } },
      },
    },
    withAwsS3Region(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_s3_region: value } },
      },
    },
    withGoogleEndpoint(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { google_endpoint: value } },
      },
    },
    withStorageType(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { storage_type: value } },
      },
    },
  },
}
