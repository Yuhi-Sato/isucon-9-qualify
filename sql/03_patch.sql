ALTER TABLE `items` ADD INDEX idx_status_created_at_id (`status`, `created_at` DESC, `id` DESC);
ALTER TABLE `items` ADD INDEX idx_status_category_created_at_id (`status`, `category_id`, `created_at` DESC, `id` DESC);
ALTER TABLE `items` ADD INDEX idx_seller_status_created_at_id (`seller_id`, `status`, `created_at` DESC, `id` DESC);
ALTER TABLE `items` ADD INDEX idx_seller_buyer_status_created_at_id (`seller_id`, `buyer_id`, `status`, `created_at` DESC, `id` DESC);
ALTER TABLE `transaction_evidences` ADD INDEX idx_item_id (`item_id`);
ALTER TABLE `shippings` ADD INDEX idx_transaction_evidence_id (`transaction_evidence_id`);
ALTER TABLE `users` ADD INDEX idx_account_name (`account_name`);
ALTER TABLE `categories` ADD INDEX idx_parent_id (`parent_id`);
