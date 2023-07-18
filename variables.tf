// Required

variable "name" {
  description = "The name of the job."
  type        = string
}

variable "pubsub_topic_name" {
  description = "The full resource name for the Cloud Pub/Sub topic to which messages will be published when a job is delivered."
  type        = string
}
variable "uri" {
  description = "The relative URI."
  type        = string
}

variable "http_target_uri" {
  description = "The full URI path that the request will be sent to."
  type        = string
}

variable "project" {
  description = "The ID of the project in which the resource belongs."
  type        = string
}

variable "relative_uri" {
  description = "The relative URL must begin with / and must be a valid HTTP relative URL. It can contain a path, query string arguments, and # fragments."
  type        = string
}
// Optional

variable "description" {
  description = "A human-readable description for the job."
  type        = string
  default     = "The job seduler job created for the project"
}

variable "schedule" {
  description = "Describes the schedule on which the job will be executed."
  type        = string
  default     = "* * * * *"
}

variable "time_zone" {
  description = <<-EOT
  {
   "type": "api",
   "purpose": "autocomplete",
   "data": [ "us-east1-b",
        "us-east1-c",
        "us-east1-d",
        "us-east4-c",
        "us-east4-b",
        "us-east4-a",
        "us-central1-c",
        "us-central1-a",
        "us-central1-f",
        "us-central1-b",
        "us-west1-b",
        "us-west1-c",
        "us-west1-a",
        "europe-west4-a",
        "europe-west4-b",
        "europe-west4-c",
        "europe-west1-b",
        "europe-west1-d",
        "europe-west1-c",
        "europe-west3-c",
        "europe-west3-a",
        "europe-west3-b",
        "europe-west2-c",
        "europe-west2-b",
        "europe-west2-a",
        "asia-east1-b",
        "asia-east1-a",
        "asia-east1-c",
        "asia-southeast1-b",
        "asia-southeast1-a",
        "asia-southeast1-c",
        "asia-northeast1-b",
        "asia-northeast1-c",
        "asia-northeast1-a",
        "asia-south1-c",
        "asia-south1-b",
        "asia-south1-a",
        "australia-southeast1-b",
        "australia-southeast1-c",
        "australia-southeast1-a",
        "southamerica-east1-b",
        "southamerica-east1-c",
        "southamerica-east1-a",
        "asia-east2-a",
        "asia-east2-b",
        "asia-east2-c",
        "asia-northeast2-a",
        "asia-northeast2-b",
        "asia-northeast2-c",
        "asia-northeast3-a",
        "asia-northeast3-b",
        "asia-northeast3-c",
        "asia-south2-a",
        "asia-south2-b",
        "asia-south2-c",
        "asia-southeast2-a",
        "asia-southeast2-b",
        "asia-southeast2-c",
        "australia-southeast2-a",
        "australia-southeast2-b",
        "australia-southeast2-c",
        "europe-central2-a",
        "europe-central2-b",
        "europe-central2-c",
        "europe-north1-a",
        "europe-north1-b",
        "europe-north1-c",
        "europe-west6-a",
        "europe-west6-b",
        "europe-west6-c",
        "northamerica-northeast1-a",
        "northamerica-northeast1-b",
        "northamerica-northeast1-c",
        "northamerica-northeast2-a",
        "northamerica-northeast2-b",
        "northamerica-northeast2-c",
        "southamerica-west1-a",
        "southamerica-west1-b",
        "southamerica-west1-c",
        "us-west2-a",
        "us-west2-b",
        "us-west2-c",
        "us-west3-a",
        "us-west3-b",
        "us-west3-c",
        "us-west4-a",
        "us-west4-b",
        "us-west4-c"
        ],
   "description":"Specifies the time zone to be used in interpreting schedule."
}
EOT
  type        = string
  default     = "asia-south1-b"
}

variable "attempt_deadline" {
  description = "The deadline for job attempts."
  type        = string
  default     = "320s"
}

variable "retry_retry_count" {
  description = "The number of attempts that the system will make to run a job using the exponential backoff procedure described by maxDoublings."
  type        = number
  default     = 2
}

variable "retry_max_retry_duration" {
  description = "The time limit for retrying a failed job, measured from time when an execution was first attempted."
  type        = string
  default     = "1s"
}

variable "retry_min_backoff_duration" {
  description = "The minimum amount of time to wait before retrying a job after it fails."
  type        = string
  default     = "5s"
}

variable "retry_max_backoff_duration" {
  description = "The maximum amount of time to wait before retrying a job after it fails. "
  type        = string
  default     = "3600s"
}

variable "retry_max_doublings" {
  description = "The time between retries will double maxDoublings times."
  type        = number
  default     = 5
}

variable "pubsub_data" {
  description = "The message payload for PubsubMessage. "
  type        = string
  default     = "Started"
}

variable "http_method" {
  description = "Which HTTP method to use for the request."
  type        = string
  default     = "GET"
}

variable "service" {
  description = "App service."
  type        = string
  default     = "default"
}

variable "instance" {
  description = "App instance."
  type        = string
  default     = "default"
}

variable "region" {
  description = <<-EOT
    {
   "type": "api",
   "purpose": "autocomplete",
   "data":[ "asia-east1",
        "asia-east2",
        "asia-northeast1",
        "asia-northeast2",
        "asia-northeast3",
        "asia-south1",
        "asia-south2",
        "asia-southeast1",
        "asia-southeast2",
        "australia-southeast1",
        "australia-southeast2",
        "europe-central2",
        "europe-north1",
        "europe-west1",
        "europe-west2",
        "europe-west3",
        "europe-west4",
        "europe-west6",
        "northamerica-northeast1",
        "northamerica-northeast2",
        "southamerica-east1",
        "southamerica-west1",
        "us-central1",
        "us-east1",
        "us-east4",
        "us-west1",
        "us-west2",
        "us-west3",
        "us-west4"
    ],
   "description":"Region where the scheduler job resides."
}
  EOT
  type        = string
  default     = "asia-south1"
}
