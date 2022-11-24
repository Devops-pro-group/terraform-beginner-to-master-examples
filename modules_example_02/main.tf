
provider "aws" {
  region  = "eu-west-1"
}

module "work_queue" {
  source      = "./sqs-with-backoff"
  queue_name  = "work-queue"
}

/* module "thread_queue" {
 source = "./sqs-with-backoff"
 queue_name = "thread-queue"
 } */

output "work_queue" {
  value = module.work_queue.queue
}

output "work_queue_dead_letter_queue" {
  value = module.work_queue.dead_letter_queue
}

