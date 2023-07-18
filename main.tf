resource "google_cloud_scheduler_job" "scheduler" {

  name             = var.name
  description      = var.description
  schedule         = var.schedule
  time_zone        = var.time_zone
  attempt_deadline = var.attempt_deadline



  retry_config {

    retry_count          = var.retry_retry_count
    max_retry_duration   = var.retry_max_retry_duration
    min_backoff_duration = var.retry_min_backoff_duration
    max_backoff_duration = var.retry_max_backoff_duration
    max_doublings        = var.retry_max_doublings

  }

  http_target {

    uri = var.uri

  }

  app_engine_http_target {

    http_method = var.http_method
    app_engine_routing {

      service  = var.service
      instance = var.instance

    }
    relative_uri = var.relative_uri

  }
  region  = var.region
  project = var.project

}