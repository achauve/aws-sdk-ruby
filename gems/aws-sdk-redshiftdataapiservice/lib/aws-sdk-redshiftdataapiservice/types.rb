# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RedshiftDataAPIService
  module Types

    # The number of active statements exceeds the limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ActiveStatementsExceededException AWS API Documentation
    #
    class ActiveStatementsExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelStatementRequest
    #   data as a hash:
    #
    #       {
    #         id: "UUID", # required
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the SQL statement to cancel. This value is a
    #   universally unique identifier (UUID) generated by Amazon Redshift
    #   Data API. This identifier is returned by `ExecuteStatment` and
    #   `ListStatements`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/CancelStatementRequest AWS API Documentation
    #
    class CancelStatementRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   A value that indicates whether the cancel statement succeeded
    #   (true).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/CancelStatementResponse AWS API Documentation
    #
    class CancelStatementResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties (metadata) of a column.
    #
    # @!attribute [rw] column_default
    #   The default value of the column.
    #   @return [String]
    #
    # @!attribute [rw] is_case_sensitive
    #   A value that indicates whether the column is case-sensitive.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_currency
    #   A value that indicates whether the column contains currency values.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_signed
    #   A value that indicates whether an integer column is signed.
    #   @return [Boolean]
    #
    # @!attribute [rw] label
    #   The label for the column.
    #   @return [String]
    #
    # @!attribute [rw] length
    #   The length of the column.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] nullable
    #   A value that indicates whether the column is nullable.
    #   @return [Integer]
    #
    # @!attribute [rw] precision
    #   The precision value of a decimal number column.
    #   @return [Integer]
    #
    # @!attribute [rw] scale
    #   The scale value of a decimal number column.
    #   @return [Integer]
    #
    # @!attribute [rw] schema_name
    #   The name of the schema that contains the table that includes the
    #   column.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table that includes the column.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The database-specific data type of the column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ColumnMetadata AWS API Documentation
    #
    class ColumnMetadata < Struct.new(
      :column_default,
      :is_case_sensitive,
      :is_currency,
      :is_signed,
      :label,
      :length,
      :name,
      :nullable,
      :precision,
      :scale,
      :schema_name,
      :table_name,
      :type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeStatementRequest
    #   data as a hash:
    #
    #       {
    #         id: "UUID", # required
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the SQL statement to describe. This value is a
    #   universally unique identifier (UUID) generated by Amazon Redshift
    #   Data API. This identifier is returned by `ExecuteStatment` and
    #   `ListStatements`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/DescribeStatementRequest AWS API Documentation
    #
    class DescribeStatementRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_identifier
    #   The cluster identifier.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time (UTC) when the SQL statement was submitted to run.
    #   @return [Time]
    #
    # @!attribute [rw] database
    #   The name of the database.
    #   @return [String]
    #
    # @!attribute [rw] db_user
    #   The database user name.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The amount of time in nanoseconds that the statement ran.
    #   @return [Integer]
    #
    # @!attribute [rw] error
    #   The error message from the cluster if the SQL statement encountered
    #   an error while running.
    #   @return [String]
    #
    # @!attribute [rw] has_result_set
    #   A value that indicates whether the statement has a result set. The
    #   result set can be empty.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   The identifier of the SQL statement described. This value is a
    #   universally unique identifier (UUID) generated by Amazon Redshift
    #   Data API.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The SQL statement text.
    #   @return [String]
    #
    # @!attribute [rw] redshift_pid
    #   The process identifier from Amazon Redshift.
    #   @return [Integer]
    #
    # @!attribute [rw] redshift_query_id
    #   The identifier of the query generated by Amazon Redshift. These
    #   identifiers are also available in the `query` column of the
    #   `STL_QUERY` system view.
    #   @return [Integer]
    #
    # @!attribute [rw] result_rows
    #   Either the number of rows returned from the SQL statement or the
    #   number of rows affected. If result size is greater than zero, the
    #   result rows can be the number of rows affected by SQL statements
    #   such as INSERT, UPDATE, DELETE, COPY, and others.
    #   @return [Integer]
    #
    # @!attribute [rw] result_size
    #   The size in bytes of the returned results.
    #   @return [Integer]
    #
    # @!attribute [rw] secret_arn
    #   The name or Amazon Resource Name (ARN) of the secret that enables
    #   access to the database.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the SQL statement being described. Status values are
    #   defined as follows:
    #
    #   * ABORTED - The query run was stopped by the user.
    #
    #   * ALL - A status value that includes all query statuses. This value
    #     can be used to filter results.
    #
    #   * FAILED - The query run failed.
    #
    #   * FINISHED - The query has finished running.
    #
    #   * PICKED - The query has been chosen to be run.
    #
    #   * STARTED - The query run has started.
    #
    #   * SUBMITTED - The query was submitted, but not yet processed.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time (UTC) that the metadata for the SQL statement was
    #   last updated. An example is the time the status last changed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/DescribeStatementResponse AWS API Documentation
    #
    class DescribeStatementResponse < Struct.new(
      :cluster_identifier,
      :created_at,
      :database,
      :db_user,
      :duration,
      :error,
      :has_result_set,
      :id,
      :query_string,
      :redshift_pid,
      :redshift_query_id,
      :result_rows,
      :result_size,
      :secret_arn,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTableRequest
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "Location", # required
    #         connected_database: "String",
    #         database: "String", # required
    #         db_user: "String",
    #         max_results: 1,
    #         next_token: "String",
    #         schema: "String",
    #         secret_arn: "SecretArn",
    #         table: "String",
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The cluster identifier. This parameter is required when
    #   authenticating using either AWS Secrets Manager or temporary
    #   credentials.
    #   @return [String]
    #
    # @!attribute [rw] connected_database
    #   A database name. The connected database is specified when you
    #   connect with your authentication credentials.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database that contains the tables to be described.
    #   If `ConnectedDatabase` is not specified, this is also the database
    #   to connect to with your authentication credentials.
    #   @return [String]
    #
    # @!attribute [rw] db_user
    #   The database user name. This parameter is required when
    #   authenticating using temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of tables to return in the response. If more
    #   tables exist than fit in one response, then `NextToken` is returned
    #   to page through the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned NextToken value in the next NextToken parameter and
    #   retrying the command. If the NextToken field is empty, all response
    #   records have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema that contains the table. If no schema is specified, then
    #   matching tables for all schemas are returned.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The name or ARN of the secret that enables access to the database.
    #   This parameter is required when authenticating using AWS Secrets
    #   Manager.
    #   @return [String]
    #
    # @!attribute [rw] table
    #   The table name. If no table is specified, then all tables for all
    #   matching schemas are returned. If no table and no schema is
    #   specified, then all tables for all schemas in the database are
    #   returned
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/DescribeTableRequest AWS API Documentation
    #
    class DescribeTableRequest < Struct.new(
      :cluster_identifier,
      :connected_database,
      :database,
      :db_user,
      :max_results,
      :next_token,
      :schema,
      :secret_arn,
      :table)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] column_list
    #   A list of columns in the table.
    #   @return [Array<Types::ColumnMetadata>]
    #
    # @!attribute [rw] next_token
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned NextToken value in the next NextToken parameter and
    #   retrying the command. If the NextToken field is empty, all response
    #   records have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The table name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/DescribeTableResponse AWS API Documentation
    #
    class DescribeTableResponse < Struct.new(
      :column_list,
      :next_token,
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SQL statement encountered an environmental error while running.
    #
    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @!attribute [rw] statement_id
    #   Statement identifier of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ExecuteStatementException AWS API Documentation
    #
    class ExecuteStatementException < Struct.new(
      :message,
      :statement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ExecuteStatementInput
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "Location", # required
    #         database: "String",
    #         db_user: "String",
    #         secret_arn: "SecretArn",
    #         sql: "StatementString", # required
    #         statement_name: "StatementNameString",
    #         with_event: false,
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The cluster identifier. This parameter is required when
    #   authenticating using either AWS Secrets Manager or temporary
    #   credentials.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database. This parameter is required when
    #   authenticating using temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] db_user
    #   The database user name. This parameter is required when
    #   authenticating using temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The name or ARN of the secret that enables access to the database.
    #   This parameter is required when authenticating using AWS Secrets
    #   Manager.
    #   @return [String]
    #
    # @!attribute [rw] sql
    #   The SQL statement text to run.
    #   @return [String]
    #
    # @!attribute [rw] statement_name
    #   The name of the SQL statement. You can name the SQL statement when
    #   you create it to identify the query.
    #   @return [String]
    #
    # @!attribute [rw] with_event
    #   A value that indicates whether to send an event to the Amazon
    #   EventBridge event bus after the SQL statement runs.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ExecuteStatementInput AWS API Documentation
    #
    class ExecuteStatementInput < Struct.new(
      :cluster_identifier,
      :database,
      :db_user,
      :secret_arn,
      :sql,
      :statement_name,
      :with_event)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_identifier
    #   The cluster identifier.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time (UTC) the statement was created.
    #   @return [Time]
    #
    # @!attribute [rw] database
    #   The name of the database.
    #   @return [String]
    #
    # @!attribute [rw] db_user
    #   The database user name.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the statement to be run. This value is a
    #   universally unique identifier (UUID) generated by Amazon Redshift
    #   Data API.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The name or ARN of the secret that enables access to the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ExecuteStatementOutput AWS API Documentation
    #
    class ExecuteStatementOutput < Struct.new(
      :cluster_identifier,
      :created_at,
      :database,
      :db_user,
      :id,
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A data value in a column.
    #
    # @!attribute [rw] blob_value
    #   A value of the BLOB data type.
    #   @return [String]
    #
    # @!attribute [rw] boolean_value
    #   A value of the Boolean data type.
    #   @return [Boolean]
    #
    # @!attribute [rw] double_value
    #   A value of the double data type.
    #   @return [Float]
    #
    # @!attribute [rw] is_null
    #   A value that indicates whether the data is NULL.
    #   @return [Boolean]
    #
    # @!attribute [rw] long_value
    #   A value of the long data type.
    #   @return [Integer]
    #
    # @!attribute [rw] string_value
    #   A value of the string data type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/Field AWS API Documentation
    #
    class Field < Struct.new(
      :blob_value,
      :boolean_value,
      :double_value,
      :is_null,
      :long_value,
      :string_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetStatementResultRequest
    #   data as a hash:
    #
    #       {
    #         id: "UUID", # required
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the SQL statement whose results are to be fetched.
    #   This value is a universally unique identifier (UUID) generated by
    #   Amazon Redshift Data API. This identifier is returned by
    #   `ExecuteStatment` and `ListStatements`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned NextToken value in the next NextToken parameter and
    #   retrying the command. If the NextToken field is empty, all response
    #   records have been retrieved for the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/GetStatementResultRequest AWS API Documentation
    #
    class GetStatementResultRequest < Struct.new(
      :id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] column_metadata
    #   The properties (metadata) of a column.
    #   @return [Array<Types::ColumnMetadata>]
    #
    # @!attribute [rw] next_token
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned NextToken value in the next NextToken parameter and
    #   retrying the command. If the NextToken field is empty, all response
    #   records have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] records
    #   The results of the SQL statement.
    #   @return [Array<Array<Types::Field>>]
    #
    # @!attribute [rw] total_num_rows
    #   The total number of rows in the result set returned from a query.
    #   You can use this number to estimate the number of calls to the
    #   `GetStatementResult` operation needed to page through the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/GetStatementResultResponse AWS API Documentation
    #
    class GetStatementResultResponse < Struct.new(
      :column_metadata,
      :next_token,
      :records,
      :total_num_rows)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Redshift Data API operation failed due to invalid input.
    #
    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDatabasesRequest
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "Location", # required
    #         database: "String",
    #         db_user: "String",
    #         max_results: 1,
    #         next_token: "String",
    #         secret_arn: "SecretArn",
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The cluster identifier. This parameter is required when
    #   authenticating using either AWS Secrets Manager or temporary
    #   credentials.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database. This parameter is required when
    #   authenticating using temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] db_user
    #   The database user name. This parameter is required when
    #   authenticating using temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of databases to return in the response. If more
    #   databases exist than fit in one response, then `NextToken` is
    #   returned to page through the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned NextToken value in the next NextToken parameter and
    #   retrying the command. If the NextToken field is empty, all response
    #   records have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The name or ARN of the secret that enables access to the database.
    #   This parameter is required when authenticating using AWS Secrets
    #   Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ListDatabasesRequest AWS API Documentation
    #
    class ListDatabasesRequest < Struct.new(
      :cluster_identifier,
      :database,
      :db_user,
      :max_results,
      :next_token,
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] databases
    #   The names of databases.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned NextToken value in the next NextToken parameter and
    #   retrying the command. If the NextToken field is empty, all response
    #   records have been retrieved for the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ListDatabasesResponse AWS API Documentation
    #
    class ListDatabasesResponse < Struct.new(
      :databases,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSchemasRequest
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "Location", # required
    #         connected_database: "String",
    #         database: "String", # required
    #         db_user: "String",
    #         max_results: 1,
    #         next_token: "String",
    #         schema_pattern: "String",
    #         secret_arn: "SecretArn",
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The cluster identifier. This parameter is required when
    #   authenticating using either AWS Secrets Manager or temporary
    #   credentials.
    #   @return [String]
    #
    # @!attribute [rw] connected_database
    #   A database name. The connected database is specified when you
    #   connect with your authentication credentials.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database that contains the schemas to list. If
    #   `ConnectedDatabase` is not specified, this is also the database to
    #   connect to with your authentication credentials.
    #   @return [String]
    #
    # @!attribute [rw] db_user
    #   The database user name. This parameter is required when
    #   authenticating using temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of schemas to return in the response. If more
    #   schemas exist than fit in one response, then `NextToken` is returned
    #   to page through the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned NextToken value in the next NextToken parameter and
    #   retrying the command. If the NextToken field is empty, all response
    #   records have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] schema_pattern
    #   A pattern to filter results by schema name. Within a schema pattern,
    #   "%" means match any substring of 0 or more characters and "\_"
    #   means match any one character. Only schema name entries matching the
    #   search pattern are returned.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The name or ARN of the secret that enables access to the database.
    #   This parameter is required when authenticating using AWS Secrets
    #   Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ListSchemasRequest AWS API Documentation
    #
    class ListSchemasRequest < Struct.new(
      :cluster_identifier,
      :connected_database,
      :database,
      :db_user,
      :max_results,
      :next_token,
      :schema_pattern,
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned NextToken value in the next NextToken parameter and
    #   retrying the command. If the NextToken field is empty, all response
    #   records have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] schemas
    #   The schemas that match the request pattern.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ListSchemasResponse AWS API Documentation
    #
    class ListSchemasResponse < Struct.new(
      :next_token,
      :schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListStatementsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #         role_level: false,
    #         statement_name: "StatementNameString",
    #         status: "SUBMITTED", # accepts SUBMITTED, PICKED, STARTED, FINISHED, ABORTED, FAILED, ALL
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of SQL statements to return in the response. If
    #   more SQL statements exist than fit in one response, then `NextToken`
    #   is returned to page through the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned NextToken value in the next NextToken parameter and
    #   retrying the command. If the NextToken field is empty, all response
    #   records have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] role_level
    #   A value that filters which statements to return in the response. If
    #   true, all statements run by the caller's IAM role are returned. If
    #   false, only statements run by the caller's IAM role in the current
    #   IAM session are returned. The default is true.
    #   @return [Boolean]
    #
    # @!attribute [rw] statement_name
    #   The name of the SQL statement specified as input to
    #   `ExecuteStatement` to identify the query. You can list multiple
    #   statements by providing a prefix that matches the beginning of the
    #   statement name. For example, to list myStatement1, myStatement2,
    #   myStatement3, and so on, then provide the a value of `myStatement`.
    #   Data API does a case-sensitive match of SQL statement names to the
    #   prefix value you provide.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the SQL statement to list. Status values are defined
    #   as follows:
    #
    #   * ABORTED - The query run was stopped by the user.
    #
    #   * ALL - A status value that includes all query statuses. This value
    #     can be used to filter results.
    #
    #   * FAILED - The query run failed.
    #
    #   * FINISHED - The query has finished running.
    #
    #   * PICKED - The query has been chosen to be run.
    #
    #   * STARTED - The query run has started.
    #
    #   * SUBMITTED - The query was submitted, but not yet processed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ListStatementsRequest AWS API Documentation
    #
    class ListStatementsRequest < Struct.new(
      :max_results,
      :next_token,
      :role_level,
      :statement_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned NextToken value in the next NextToken parameter and
    #   retrying the command. If the NextToken field is empty, all response
    #   records have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] statements
    #   The SQL statements.
    #   @return [Array<Types::StatementData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ListStatementsResponse AWS API Documentation
    #
    class ListStatementsResponse < Struct.new(
      :next_token,
      :statements)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTablesRequest
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "Location", # required
    #         connected_database: "String",
    #         database: "String", # required
    #         db_user: "String",
    #         max_results: 1,
    #         next_token: "String",
    #         schema_pattern: "String",
    #         secret_arn: "SecretArn",
    #         table_pattern: "String",
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The cluster identifier. This parameter is required when
    #   authenticating using either AWS Secrets Manager or temporary
    #   credentials.
    #   @return [String]
    #
    # @!attribute [rw] connected_database
    #   A database name. The connected database is specified when you
    #   connect with your authentication credentials.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database that contains the tables to list. If
    #   `ConnectedDatabase` is not specified, this is also the database to
    #   connect to with your authentication credentials.
    #   @return [String]
    #
    # @!attribute [rw] db_user
    #   The database user name. This parameter is required when
    #   authenticating using temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of tables to return in the response. If more
    #   tables exist than fit in one response, then `NextToken` is returned
    #   to page through the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned NextToken value in the next NextToken parameter and
    #   retrying the command. If the NextToken field is empty, all response
    #   records have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] schema_pattern
    #   A pattern to filter results by schema name. Within a schema pattern,
    #   "%" means match any substring of 0 or more characters and "\_"
    #   means match any one character. Only schema name entries matching the
    #   search pattern are returned. If `SchemaPattern` is not specified,
    #   then all tables that match `TablePattern` are returned. If neither
    #   `SchemaPattern` or `TablePattern` are specified, then all tables are
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The name or ARN of the secret that enables access to the database.
    #   This parameter is required when authenticating using AWS Secrets
    #   Manager.
    #   @return [String]
    #
    # @!attribute [rw] table_pattern
    #   A pattern to filter results by table name. Within a table pattern,
    #   "%" means match any substring of 0 or more characters and "\_"
    #   means match any one character. Only table name entries matching the
    #   search pattern are returned. If `TablePattern` is not specified,
    #   then all tables that match `SchemaPattern`are returned. If neither
    #   `SchemaPattern` or `TablePattern` are specified, then all tables are
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ListTablesRequest AWS API Documentation
    #
    class ListTablesRequest < Struct.new(
      :cluster_identifier,
      :connected_database,
      :database,
      :db_user,
      :max_results,
      :next_token,
      :schema_pattern,
      :secret_arn,
      :table_pattern)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned NextToken value in the next NextToken parameter and
    #   retrying the command. If the NextToken field is empty, all response
    #   records have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] tables
    #   The tables that match the request pattern.
    #   @return [Array<Types::TableMember>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ListTablesResponse AWS API Documentation
    #
    class ListTablesResponse < Struct.new(
      :next_token,
      :tables)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Redshift Data API operation failed due to a missing
    # resource.
    #
    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Resource identifier associated with the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SQL statement to run.
    #
    # @!attribute [rw] created_at
    #   The date and time (UTC) the statement was created.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The SQL statement identifier. This value is a universally unique
    #   identifier (UUID) generated by Amazon Redshift Data API.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The SQL statement.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The name or Amazon Resource Name (ARN) of the secret that enables
    #   access to the database.
    #   @return [String]
    #
    # @!attribute [rw] statement_name
    #   The name of the SQL statement.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the SQL statement. An example is the that the SQL
    #   statement finished.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time (UTC) that the statement metadata was last
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/StatementData AWS API Documentation
    #
    class StatementData < Struct.new(
      :created_at,
      :id,
      :query_string,
      :secret_arn,
      :statement_name,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of a table.
    #
    # @!attribute [rw] name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema containing the table.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the table. Possible values include TABLE, VIEW, SYSTEM
    #   TABLE, GLOBAL TEMPORARY, LOCAL TEMPORARY, ALIAS, and SYNONYM.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/TableMember AWS API Documentation
    #
    class TableMember < Struct.new(
      :name,
      :schema,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Redshift Data API operation failed due to invalid input.
    #
    # @!attribute [rw] message
    #   The exception message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
