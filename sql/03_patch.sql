ALTER TABLE `items` ADD INDEX idx_created_at (`created_at`);
ALTER TABLE `items` ADD INDEX idx_status_category_created_at (`status`, `category_id`, `created_at`);
ALTER TABLE `items` ADD INDEX idx_buyer_id_created_at (`seller_id`, `created_at`);
ALTER TABLE `items` ADD INDEX idx_seller_id_created_at (`buyer_id`, `created_at`);
ALTER TABLE `transaction_evidences` ADD INDEX idx_item_id (`item_id`);
ALTER TABLE `shippings` ADD INDEX idx_transaction_evidence_id (`transaction_evidence_id`);
ALTER TABLE `users` ADD INDEX idx_account_name (`account_name`);
ALTER TABLE `categories` ADD INDEX idx_parent_id (`parent_id`);
