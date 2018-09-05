terraform {
  required_version = ">= 0.11.8"

  backend "gcs" {
    // encryption_key = "${google_kms_crypto_key.feedyard_statefile_key}"
  }
}

provider "google" {
  project     = "delivery-infrastructure-state"
  region      = "${var.account_region}"
}



// TODO include bucket incryption
//
// resource "google_kms_key_ring" "feedyard_state_keyring" {
//   name     = "feedyard_state_keyring"
//   project  = "prod"
//   location = "${var.account_region}"
// }

// resource "google_kms_crypto_key" "feedyard_statefile_key" {
//   name            = "feedyard_statefile_key"
//   key_ring        = "${google_kms_key_ring.feedyard_state_keyring.self_link}"
//   rotation_period = "2592000s"
// }