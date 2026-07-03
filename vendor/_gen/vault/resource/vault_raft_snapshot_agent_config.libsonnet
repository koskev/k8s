{
  new(terraformName, interval_seconds, name, path_prefix, storage_type):: self.functions(terraformName) {
    _type:: 'tf',
    resource+: {
      vault_raft_snapshot_agent_config+: {
        [terraformName]+: {
          interval_seconds: interval_seconds,
          name: name,
          path_prefix: path_prefix,
          storage_type: storage_type,
        },
      },
    },
  },
  functions(terraformName):: {
    '#withAutoloadEnabled':: { 'function': { help: |||
      Have Vault automatically load the latest snapshot after it is written. Note that this does not mean the snapshot is automatically applied to the cluster, it is just loaded and available for recovery operations. Requires Vault Enterprise 1.21.0+. Not supported with storage_type = "local". 
    ||| } },
    withAutoloadEnabled(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { autoload_enabled: value } },
      },
    },
    '#withAwsAccessKeyId':: { 'function': { help: |||
      AWS access key ID. 
    ||| } },
    withAwsAccessKeyId(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_access_key_id: value } },
      },
    },
    '#withAwsS3Bucket':: { 'function': { help: |||
      S3 bucket to write snapshots to. 
    ||| } },
    withAwsS3Bucket(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_s3_bucket: value } },
      },
    },
    '#withAwsS3DisableTls':: { 'function': { help: |||
      Disable TLS for the S3 endpoint. This should only be used for testing purposes. 
    ||| } },
    withAwsS3DisableTls(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_s3_disable_tls: value } },
      },
    },
    '#withAwsS3EnableKms':: { 'function': { help: |||
      Use KMS to encrypt bucket contents. 
    ||| } },
    withAwsS3EnableKms(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_s3_enable_kms: value } },
      },
    },
    '#withAwsS3Endpoint':: { 'function': { help: |||
      AWS endpoint. This is typically only set when using a non-AWS S3 implementation like Minio. 
    ||| } },
    withAwsS3Endpoint(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_s3_endpoint: value } },
      },
    },
    '#withAwsS3ForcePathStyle':: { 'function': { help: |||
      Use the endpoint/bucket URL style instead of bucket.endpoint. 
    ||| } },
    withAwsS3ForcePathStyle(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_s3_force_path_style: value } },
      },
    },
    '#withAwsS3KmsKey':: { 'function': { help: |||
      Use named KMS key, when aws_s3_enable_kms=true 
    ||| } },
    withAwsS3KmsKey(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_s3_kms_key: value } },
      },
    },
    '#withAwsS3Region':: { 'function': { help: |||
      AWS region bucket is in. 
    ||| } },
    withAwsS3Region(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_s3_region: value } },
      },
    },
    '#withAwsS3ServerSideEncryption':: { 'function': { help: |||
      Use AES256 to encrypt bucket contents. 
    ||| } },
    withAwsS3ServerSideEncryption(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_s3_server_side_encryption: value } },
      },
    },
    '#withAwsSecretAccessKey':: { 'function': { help: |||
      AWS secret access key. 
    ||| } },
    withAwsSecretAccessKey(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_secret_access_key: value } },
      },
    },
    '#withAwsSecretAccessKeyWo':: { 'function': { help: |||
      AWS secret access key. Write-only: never stored in state. If secrets_wo_version is not set, changes are automatically detected via a hash stored in private state. 
    ||| } },
    withAwsSecretAccessKeyWo(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_secret_access_key_wo: value } },
      },
    },
    '#withAwsSessionToken':: { 'function': { help: |||
      AWS session token. 
    ||| } },
    withAwsSessionToken(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { aws_session_token: value } },
      },
    },
    '#withAzureAccountKey':: { 'function': { help: |||
      Azure account key. Required when azure_auth_mode is 'shared'. 
    ||| } },
    withAzureAccountKey(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { azure_account_key: value } },
      },
    },
    '#withAzureAccountName':: { 'function': { help: |||
      Azure account name. 
    ||| } },
    withAzureAccountName(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { azure_account_name: value } },
      },
    },
    '#withAzureAuthMode':: { 'function': { help: |||
      Azure authentication mode. Required for azure-blob storage. Possible values are 'shared', 'managed', or 'environment'. Requires Vault Enterprise 1.18.0+. 
    ||| } },
    withAzureAuthMode(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { azure_auth_mode: value } },
      },
    },
    '#withAzureBlobEnvironment':: { 'function': { help: |||
      Azure blob environment. 
    ||| } },
    withAzureBlobEnvironment(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { azure_blob_environment: value } },
      },
    },
    '#withAzureClientId':: { 'function': { help: |||
      Azure client ID for authentication. Required when azure_auth_mode is 'managed'. Requires Vault Enterprise 1.18.0+. 
    ||| } },
    withAzureClientId(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { azure_client_id: value } },
      },
    },
    '#withAzureContainerName':: { 'function': { help: |||
      Azure container name to write snapshots to. 
    ||| } },
    withAzureContainerName(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { azure_container_name: value } },
      },
    },
    '#withAzureEndpoint':: { 'function': { help: |||
      Azure blob storage endpoint. This is typically only set when using a non-Azure implementation like Azurite. 
    ||| } },
    withAzureEndpoint(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { azure_endpoint: value } },
      },
    },
    '#withFilePrefix':: { 'function': { help: |||
      The file or object name of snapshot files will start with this string. 
    ||| } },
    withFilePrefix(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { file_prefix: value } },
      },
    },
    '#withGoogleDisableTls':: { 'function': { help: |||
      Disable TLS for the GCS endpoint. 
    ||| } },
    withGoogleDisableTls(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { google_disable_tls: value } },
      },
    },
    '#withGoogleEndpoint':: { 'function': { help: |||
      GCS endpoint. This is typically only set when using a non-Google GCS implementation like fake-gcs-server. 
    ||| } },
    withGoogleEndpoint(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { google_endpoint: value } },
      },
    },
    '#withGoogleGcsBucket':: { 'function': { help: |||
      GCS bucket to write snapshots to. 
    ||| } },
    withGoogleGcsBucket(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { google_gcs_bucket: value } },
      },
    },
    '#withGoogleServiceAccountKey':: { 'function': { help: |||
      Google service account key in JSON format. 
    ||| } },
    withGoogleServiceAccountKey(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { google_service_account_key: value } },
      },
    },
    '#withIntervalSeconds':: { 'function': { help: |||
      Number of seconds between snapshots. 
    ||| } },
    withIntervalSeconds(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { interval_seconds: value } },
      },
    },
    '#withLocalMaxSpace':: { 'function': { help: |||
      The maximum space, in bytes, to use for snapshots. 
    ||| } },
    withLocalMaxSpace(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { local_max_space: value } },
      },
    },
    '#withName':: { 'function': { help: |||
      Name of the snapshot agent configuration. 
    ||| } },
    withName(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { name: value } },
      },
    },
    '#withNamespace':: { 'function': { help: |||
      Target namespace. (requires Enterprise) 
    ||| } },
    withNamespace(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { namespace: value } },
      },
    },
    '#withPathPrefix':: { 'function': { help: |||
      The directory or bucket prefix to use. 
    ||| } },
    withPathPrefix(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { path_prefix: value } },
      },
    },
    '#withRetain':: { 'function': { help: |||
      How many snapshots are to be kept. 
    ||| } },
    withRetain(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { retain: value } },
      },
    },
    '#withSecretsWoVersion':: { 'function': { help: |||
      Version number for write-only secret updates. If not set, the provider automatically detects changes to write-only secrets using a SHA-256 hash stored in private state. If set manually, you control when the secret is updated by incrementing this value. 
    ||| } },
    withSecretsWoVersion(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { secrets_wo_version: value } },
      },
    },
    '#withStorageType':: { 'function': { help: |||
      What storage service to send snapshots to. One of "local", "azure-blob", "aws-s3", or "google-gcs". 
    ||| } },
    withStorageType(value):: self {
      resource+: {
        vault_raft_snapshot_agent_config+: { [terraformName]+: { storage_type: value } },
      },
    },
  },
  ref(terraformName):: {
    local refSelf = self,
    plain(suffix=''):: '${ vault_raft_snapshot_agent_config.%s%s }' % [terraformName, suffix],
    fields:: {
      '#autoload_enabled':: { 'function': { help: |||
        Have Vault automatically load the latest snapshot after it is written. Note that this does not mean the snapshot is automatically applied to the cluster, it is just loaded and available for recovery operations. Requires Vault Enterprise 1.21.0+. Not supported with storage_type = "local". 
      ||| } },
      autoload_enabled(suffix=''):: refSelf.plain('.autoload_enabled%s' % suffix),
      '#aws_access_key_id':: { 'function': { help: |||
        AWS access key ID. 
      ||| } },
      aws_access_key_id(suffix=''):: refSelf.plain('.aws_access_key_id%s' % suffix),
      '#aws_s3_bucket':: { 'function': { help: |||
        S3 bucket to write snapshots to. 
      ||| } },
      aws_s3_bucket(suffix=''):: refSelf.plain('.aws_s3_bucket%s' % suffix),
      '#aws_s3_disable_tls':: { 'function': { help: |||
        Disable TLS for the S3 endpoint. This should only be used for testing purposes. 
      ||| } },
      aws_s3_disable_tls(suffix=''):: refSelf.plain('.aws_s3_disable_tls%s' % suffix),
      '#aws_s3_enable_kms':: { 'function': { help: |||
        Use KMS to encrypt bucket contents. 
      ||| } },
      aws_s3_enable_kms(suffix=''):: refSelf.plain('.aws_s3_enable_kms%s' % suffix),
      '#aws_s3_endpoint':: { 'function': { help: |||
        AWS endpoint. This is typically only set when using a non-AWS S3 implementation like Minio. 
      ||| } },
      aws_s3_endpoint(suffix=''):: refSelf.plain('.aws_s3_endpoint%s' % suffix),
      '#aws_s3_force_path_style':: { 'function': { help: |||
        Use the endpoint/bucket URL style instead of bucket.endpoint. 
      ||| } },
      aws_s3_force_path_style(suffix=''):: refSelf.plain('.aws_s3_force_path_style%s' % suffix),
      '#aws_s3_kms_key':: { 'function': { help: |||
        Use named KMS key, when aws_s3_enable_kms=true 
      ||| } },
      aws_s3_kms_key(suffix=''):: refSelf.plain('.aws_s3_kms_key%s' % suffix),
      '#aws_s3_region':: { 'function': { help: |||
        AWS region bucket is in. 
      ||| } },
      aws_s3_region(suffix=''):: refSelf.plain('.aws_s3_region%s' % suffix),
      '#aws_s3_server_side_encryption':: { 'function': { help: |||
        Use AES256 to encrypt bucket contents. 
      ||| } },
      aws_s3_server_side_encryption(suffix=''):: refSelf.plain('.aws_s3_server_side_encryption%s' % suffix),
      '#aws_secret_access_key':: { 'function': { help: |||
        AWS secret access key. 
      ||| } },
      aws_secret_access_key(suffix=''):: refSelf.plain('.aws_secret_access_key%s' % suffix),
      '#aws_secret_access_key_wo':: { 'function': { help: |||
        AWS secret access key. Write-only: never stored in state. If secrets_wo_version is not set, changes are automatically detected via a hash stored in private state. 
      ||| } },
      aws_secret_access_key_wo(suffix=''):: refSelf.plain('.aws_secret_access_key_wo%s' % suffix),
      '#aws_session_token':: { 'function': { help: |||
        AWS session token. 
      ||| } },
      aws_session_token(suffix=''):: refSelf.plain('.aws_session_token%s' % suffix),
      '#azure_account_key':: { 'function': { help: |||
        Azure account key. Required when azure_auth_mode is 'shared'. 
      ||| } },
      azure_account_key(suffix=''):: refSelf.plain('.azure_account_key%s' % suffix),
      '#azure_account_name':: { 'function': { help: |||
        Azure account name. 
      ||| } },
      azure_account_name(suffix=''):: refSelf.plain('.azure_account_name%s' % suffix),
      '#azure_auth_mode':: { 'function': { help: |||
        Azure authentication mode. Required for azure-blob storage. Possible values are 'shared', 'managed', or 'environment'. Requires Vault Enterprise 1.18.0+. 
      ||| } },
      azure_auth_mode(suffix=''):: refSelf.plain('.azure_auth_mode%s' % suffix),
      '#azure_blob_environment':: { 'function': { help: |||
        Azure blob environment. 
      ||| } },
      azure_blob_environment(suffix=''):: refSelf.plain('.azure_blob_environment%s' % suffix),
      '#azure_client_id':: { 'function': { help: |||
        Azure client ID for authentication. Required when azure_auth_mode is 'managed'. Requires Vault Enterprise 1.18.0+. 
      ||| } },
      azure_client_id(suffix=''):: refSelf.plain('.azure_client_id%s' % suffix),
      '#azure_container_name':: { 'function': { help: |||
        Azure container name to write snapshots to. 
      ||| } },
      azure_container_name(suffix=''):: refSelf.plain('.azure_container_name%s' % suffix),
      '#azure_endpoint':: { 'function': { help: |||
        Azure blob storage endpoint. This is typically only set when using a non-Azure implementation like Azurite. 
      ||| } },
      azure_endpoint(suffix=''):: refSelf.plain('.azure_endpoint%s' % suffix),
      '#file_prefix':: { 'function': { help: |||
        The file or object name of snapshot files will start with this string. 
      ||| } },
      file_prefix(suffix=''):: refSelf.plain('.file_prefix%s' % suffix),
      '#google_disable_tls':: { 'function': { help: |||
        Disable TLS for the GCS endpoint. 
      ||| } },
      google_disable_tls(suffix=''):: refSelf.plain('.google_disable_tls%s' % suffix),
      '#google_endpoint':: { 'function': { help: |||
        GCS endpoint. This is typically only set when using a non-Google GCS implementation like fake-gcs-server. 
      ||| } },
      google_endpoint(suffix=''):: refSelf.plain('.google_endpoint%s' % suffix),
      '#google_gcs_bucket':: { 'function': { help: |||
        GCS bucket to write snapshots to. 
      ||| } },
      google_gcs_bucket(suffix=''):: refSelf.plain('.google_gcs_bucket%s' % suffix),
      '#google_service_account_key':: { 'function': { help: |||
        Google service account key in JSON format. 
      ||| } },
      google_service_account_key(suffix=''):: refSelf.plain('.google_service_account_key%s' % suffix),
      id(suffix=''):: refSelf.plain('.id%s' % suffix),
      '#interval_seconds':: { 'function': { help: |||
        Number of seconds between snapshots. 
      ||| } },
      interval_seconds(suffix=''):: refSelf.plain('.interval_seconds%s' % suffix),
      '#local_max_space':: { 'function': { help: |||
        The maximum space, in bytes, to use for snapshots. 
      ||| } },
      local_max_space(suffix=''):: refSelf.plain('.local_max_space%s' % suffix),
      '#name':: { 'function': { help: |||
        Name of the snapshot agent configuration. 
      ||| } },
      name(suffix=''):: refSelf.plain('.name%s' % suffix),
      '#namespace':: { 'function': { help: |||
        Target namespace. (requires Enterprise) 
      ||| } },
      namespace(suffix=''):: refSelf.plain('.namespace%s' % suffix),
      '#path_prefix':: { 'function': { help: |||
        The directory or bucket prefix to use. 
      ||| } },
      path_prefix(suffix=''):: refSelf.plain('.path_prefix%s' % suffix),
      '#retain':: { 'function': { help: |||
        How many snapshots are to be kept. 
      ||| } },
      retain(suffix=''):: refSelf.plain('.retain%s' % suffix),
      '#secrets_wo_version':: { 'function': { help: |||
        Version number for write-only secret updates. If not set, the provider automatically detects changes to write-only secrets using a SHA-256 hash stored in private state. If set manually, you control when the secret is updated by incrementing this value. 
      ||| } },
      secrets_wo_version(suffix=''):: refSelf.plain('.secrets_wo_version%s' % suffix),
      '#storage_type':: { 'function': { help: |||
        What storage service to send snapshots to. One of "local", "azure-blob", "aws-s3", or "google-gcs". 
      ||| } },
      storage_type(suffix=''):: refSelf.plain('.storage_type%s' % suffix),
    },
  },
}
