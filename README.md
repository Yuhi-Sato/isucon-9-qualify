初回ベンチ結果

```
{"pass":true,"score":2420,"campaign":0,"language":"Go","messages":[]}
```

```
make[1]: Entering directory '/home/isucon/isucari/webapp'
sudo alp ltsv --file=/var/log/nginx/access.log --config=tool-config/alp/config.yml
+-------+-----+-----+--------+---------------------------------------------------------+-------+-------+---------+-------+-------+
| COUNT | 5XX | 4XX | METHOD |                           URI                           |  MIN  |  MAX  |   SUM   |  AVG  |  P99  |
+-------+-----+-----+--------+---------------------------------------------------------+-------+-------+---------+-------+-------+
|   119 |   0 |   7 | GET    | /users/transactions.json                                | 0.036 | 7.388 | 317.925 | 2.672 | 6.532 |
|    65 |   0 |   4 | GET    | ^/users/transactions\.json\?created_at=\d+&item_id=\d+$ | 0.040 | 5.652 | 172.684 | 2.657 | 5.652 |
|   734 |   0 |   2 | GET    | ^/new_items/\d+\.json\?created_at=\d+&item_id=\d+$      | 0.040 | 0.660 | 120.410 | 0.164 | 0.520 |
|    54 |   0 |  24 | POST   | /buy                                                    | 1.605 | 1.624 |  51.652 | 0.957 | 1.624 |
|   117 |   0 |   0 | GET    | ^/new_items\.json\?created_at=\d+&item_id=\d+$          | 0.072 | 0.728 |  37.370 | 0.319 | 0.708 |
|   168 |   0 |   0 | GET    | ^/users/\d+\.json$                                      | 0.020 | 0.780 |  26.270 | 0.156 | 0.612 |
|    45 |   0 |  18 | POST   | /ship_done                                              | 0.804 | 0.824 |  23.429 | 0.521 | 0.824 |
|    40 |   0 |  12 | POST   | /ship                                                   | 0.004 | 0.824 |  20.266 | 0.507 | 0.824 |
|   111 |   0 |   1 | GET    | ^/users/\d+\.json\?created_at=\d+&item_id=\d+$          | 0.028 | 0.620 |  18.750 | 0.169 | 0.472 |
|   103 |   0 |   0 | GET    | ^/new_items/\d+\.json$                                  | 0.044 | 0.712 |  17.556 | 0.170 | 0.680 |
|    24 |   0 |   0 | POST   | /complete                                               | 0.004 | 0.820 |  16.956 | 0.707 | 0.820 |
|    61 |   0 |   8 | POST   | /login                                                  | 0.068 | 0.552 |  13.600 | 0.223 | 0.552 |
|  2517 |   0 |   0 | GET    | ^/items/\d+\.json$                                      | 0.004 | 0.100 |   9.869 | 0.004 | 0.024 |
|    15 |   0 |   0 | GET    | /new_items.json                                         | 0.064 | 1.268 |   4.692 | 0.313 | 1.268 |
|     1 |   0 |   0 | POST   | /initialize                                             | 4.420 | 4.420 |   4.420 | 4.420 | 4.420 |
|    53 |   0 |   0 | GET    | /settings                                               | 0.000 | 0.264 |   3.160 | 0.060 | 0.264 |
|    54 |   0 |  18 | POST   | /sell                                                   | 0.004 | 0.444 |   1.984 | 0.037 | 0.444 |
|    13 |   0 |   0 | POST   | /bump                                                   | 0.004 | 0.140 |   0.208 | 0.016 | 0.140 |
|    39 |   0 |  12 | GET    | ^/transactions/\d+\.png$                                | 0.000 | 0.008 |   0.076 | 0.002 | 0.008 |
|    57 |   0 |   0 | GET    | ^/upload/[a-zA-Z0-9]+\.jpg$                             | 0.000 | 0.004 |   0.072 | 0.001 | 0.004 |
|     1 |   0 |   0 | GET    | /static/css/main.19393e92.chunk.css                     | 0.060 | 0.060 |   0.060 | 0.060 | 0.060 |
|     9 |   0 |   6 | POST   | /items/edit                                             | 0.004 | 0.032 |   0.052 | 0.006 | 0.032 |
|     1 |   0 |   0 | GET    | /static/js/main.babc3d4d.chunk.js                       | 0.024 | 0.024 |   0.024 | 0.024 | 0.024 |
|     1 |   0 |   0 | GET    | /static/js/2.ff6e1067.chunk.js                          | 0.004 | 0.004 |   0.004 | 0.004 | 0.004 |
|     1 |   0 |   0 | GET    | /reports.json                                           | 0.004 | 0.004 |   0.004 | 0.004 | 0.004 |
|     1 |   0 |   0 | GET    | /static/js/runtime~main.a8a9905a.js                     | 0.000 | 0.000 |   0.000 | 0.000 | 0.000 |
+-------+-----+-----+--------+---------------------------------------------------------+-------+-------+---------+-------+-------+
make[1]: Leaving directory '/home/isucon/isucari/webapp'

```

```
make[1]: Entering directory '/home/isucon/isucari/webapp'
sudo pt-query-digest /var/log/mysql/mysql-slow.log
# 42s user time, 160ms system time, 36.29M rss, 91.27M vsz
# Current date: Sun Aug 18 01:47:37 2024
# Hostname: ip-172-31-4-251
# Files: /var/log/mysql/mysql-slow.log
# Overall: 551.42k total, 65 unique, 8.11k QPS, 2.84x concurrency ________
# Time range: 2024-08-18T01:37:19 to 2024-08-18T01:38:27
# Attribute          total     min     max     avg     95%  stddev  median
# ============     ======= ======= ======= ======= ======= ======= =======
# Exec time           193s     1us   475ms   350us   403us     6ms    57us
# Lock time             5s       0    19ms     9us    15us   119us       0
# Rows sent        237.10k       0      49    0.44    0.99    2.19       0
# Rows examine      38.52M       0  48.91k   73.24    0.99   1.69k       0
# Query size       138.69M       0 913.29k  263.72   40.45  12.27k   31.70
# Profile
# Rank Query ID           Response time Calls  R/Call V/M   Item
# ==== ================== ============= ====== ====== ===== ==============
#    1 0x930FF1E60F9B9ED6 46.7372 24.2%    717 0.0652  0.04 SELECT items
#    2 0x99AA0165670CE848 26.8435 13.9% 183216 0.0001  0.00 ADMIN PREPARE
#    3 0x93761CC3349B416F 25.1705 13.0%    117 0.2151  0.04 SELECT items
#    4 0xD12C53668328DB0D 23.0766 11.9% 119202 0.0002  0.00 SELECT categories
#    5 0x312243B842F41381 18.6204  9.6%    172 0.1083  0.06 SELECT items
#    6 0x36DB5799406088D9 12.2358  6.3%    116 0.1055  0.07 SELECT items
#    7 0xE070DA9421CA8C8D 11.9319  6.2%  54768 0.0002  0.00 SELECT users
#    8 0x2C1B6BE83F13FC2B  9.5269  4.9%    119 0.0801  0.04 SELECT items
#    9 0x9A74397A1FB13CDE  6.1495  3.2%    101 0.0609  0.05 SELECT items
#   10 0x4C0C6A2C3174E3A8  3.9990  2.1%     60 0.0667  0.01 SELECT items
# MISC 0xMISC              8.9173  4.6% 192833 0.0000   0.0 <55 ITEMS>

# Query 1: 11.56 QPS, 0.75x concurrency, ID 0x930FF1E60F9B9ED6 at byte 155744244
# Scores: V/M = 0.04
# Time range: 2024-08-18T01:37:24 to 2024-08-18T01:38:26
# Attribute    pct   total     min     max     avg     95%  stddev  median
# ============ === ======= ======= ======= ======= ======= ======= =======
# Count          0     717
# Exec time     24     47s     7ms   291ms    65ms   180ms    52ms    46ms
# Lock time      0    36ms    22us     1ms    50us   113us    84us    31us
# Rows sent     14  34.31k      49      49      49      49       0      49
# Rows examine  21   8.41M   3.84k  48.90k  12.01k  46.68k  13.65k   6.96k
# Query size     0 176.88k     248     257  252.61  246.02       0  246.02
# String:
# Databases    isucari
# Hosts        localhost
# Users        isucari
# Query_time distribution
#   1us
#  10us
# 100us
#   1ms  #
#  10ms  ################################################################
# 100ms  #################
#    1s
#  10s+
# Tables
#    SHOW TABLE STATUS FROM `isucari` LIKE 'items'\G
#    SHOW CREATE TABLE `isucari`.`items`\G
# EXPLAIN /*!50100 PARTITIONS*/
SELECT * FROM `items` WHERE `status` IN ('on_sale','sold_out') AND category_id IN (21, 22, 23, 24) AND (`created_at` < '2019-08-12 15:41:11'  OR (`created_at` <= '2019-08-12 15:41:11' AND `id` < 49269)) ORDER BY `created_at` DESC, `id` DESC LIMIT 49\G

# Query 2: 2.86k QPS, 0.42x concurrency, ID 0x99AA0165670CE848 at byte 129559217
# Scores: V/M = 0.00
# Time range: 2024-08-18T01:37:23 to 2024-08-18T01:38:27
# Attribute    pct   total     min     max     avg     95%  stddev  median
# ============ === ======= ======= ======= ======= ======= ======= =======
# Count         33  183216
# Exec time     13     27s    19us    51ms   146us   445us   385us    69us
# Lock time      0       0       0       0       0       0       0       0
# Rows sent      0       0       0       0       0       0       0       0
# Rows examine   0       0       0       0       0       0       0       0
# Query size     3   5.24M      30      30      30      30       0      30
# String:
# Databases    isucari
# Hosts        localhost
# Users        isucari
# Query_time distribution
#   1us
#  10us  ################################################################
# 100us  ##########################
#   1ms  #
#  10ms  #
# 100ms
#    1s
#  10s+
administrator command: Prepare\G

# Query 3: 2.17 QPS, 0.47x concurrency, ID 0x93761CC3349B416F at byte 145085004
# Scores: V/M = 0.04
# Time range: 2024-08-18T01:37:25 to 2024-08-18T01:38:19
# Attribute    pct   total     min     max     avg     95%  stddev  median
# ============ === ======= ======= ======= ======= ======= ======= =======
# Count          0     117
# Exec time     13     25s    65ms   475ms   215ms   433ms    96ms   171ms
# Lock time      0     7ms    21us   581us    59us   176us    81us    30us
# Rows sent      2   5.60k      49      49      49      49       0      49
# Rows examine  14   5.59M  48.88k  48.91k  48.90k  46.68k       0  46.68k
# Query size     0  24.34k     213     213     213     213       0     213
# String:
# Databases    isucari
# Hosts        localhost
# Users        isucari
# Query_time distribution
#   1us
#  10us
# 100us
#   1ms
#  10ms  ###
# 100ms  ################################################################
#    1s
#  10s+
# Tables
#    SHOW TABLE STATUS FROM `isucari` LIKE 'items'\G
#    SHOW CREATE TABLE `isucari`.`items`\G
# EXPLAIN /*!50100 PARTITIONS*/
SELECT * FROM `items` WHERE `status` IN ('on_sale','sold_out') AND (`created_at` < '2019-08-12 15:47:09'  OR (`created_at` <= '2019-08-12 15:47:09' AND `id` < 49621)) ORDER BY `created_at` DESC, `id` DESC LIMIT 49\G

# Query 4: 1.89k QPS, 0.37x concurrency, ID 0xD12C53668328DB0D at byte 217847424
# Scores: V/M = 0.00
# Time range: 2024-08-18T01:37:24 to 2024-08-18T01:38:27
# Attribute    pct   total     min     max     avg     95%  stddev  median
# ============ === ======= ======= ======= ======= ======= ======= =======
# Count         21  119202
# Exec time     11     23s    27us    21ms   193us   541us   394us    98us
# Lock time     49      2s     6us    13ms    20us    31us    96us    13us
# Rows sent     49 116.41k       1       1       1       1       0       1
# Rows examine   0 116.41k       1       1       1       1       0       1
# Query size     3   4.76M      41      42   41.86   40.45       0   40.45
# String:
# Databases    isucari
# Hosts        localhost
# Users        isucari
# Query_time distribution
#   1us
#  10us  ###############################################################
# 100us  ################################################################
#   1ms  ##
#  10ms  #
# 100ms
#    1s
#  10s+
# Tables
#    SHOW TABLE STATUS FROM `isucari` LIKE 'categories'\G
#    SHOW CREATE TABLE `isucari`.`categories`\G
# EXPLAIN /*!50100 PARTITIONS*/
SELECT * FROM `categories` WHERE `id` = 60\G

# Query 5: 2.82 QPS, 0.31x concurrency, ID 0x312243B842F41381 at byte 141802217
# Scores: V/M = 0.06
# Time range: 2024-08-18T01:37:24 to 2024-08-18T01:38:25
# Attribute    pct   total     min     max     avg     95%  stddev  median
# ============ === ======= ======= ======= ======= ======= ======= =======
# Count          0     172
# Exec time      9     19s    20ms   352ms   108ms   253ms    79ms    87ms
# Lock time      0     8ms    18us     1ms    45us    52us   130us    23us
# Rows sent      1   4.48k       0      49   26.67   46.83   22.88   46.83
# Rows examine  21   8.21M  48.83k  48.91k  48.88k  46.68k       0  46.68k
# Query size     0  23.80k     140     142  141.72  136.99       0  136.99
# String:
# Databases    isucari
# Hosts        localhost
# Users        isucari
# Query_time distribution
#   1us
#  10us
# 100us
#   1ms
#  10ms  ################################################################
# 100ms  #####################################################
#    1s
#  10s+
# Tables
#    SHOW TABLE STATUS FROM `isucari` LIKE 'items'\G
#    SHOW CREATE TABLE `isucari`.`items`\G
# EXPLAIN /*!50100 PARTITIONS*/
SELECT * FROM `items` WHERE `seller_id` = 1257 AND `status` IN ('on_sale','trading','sold_out') ORDER BY `created_at` DESC, `id` DESC LIMIT 49\G

# Query 6: 1.93 QPS, 0.20x concurrency, ID 0x36DB5799406088D9 at byte 132897322
# Scores: V/M = 0.07
# Time range: 2024-08-18T01:37:24 to 2024-08-18T01:38:24
# Attribute    pct   total     min     max     avg     95%  stddev  median
# ============ === ======= ======= ======= ======= ======= ======= =======
# Count          0     116
# Exec time      6     12s    20ms   355ms   105ms   266ms    83ms    78ms
# Lock time      0    11ms    26us     5ms    93us   119us   433us    31us
# Rows sent      1   3.74k      15      49   32.99   46.83   15.15   46.83
# Rows examine  14   5.54M  48.85k  48.91k  48.88k  46.68k       0  46.68k
# Query size     0  27.78k     243     246  245.24  234.30       0  234.30
# String:
# Databases    isucari
# Hosts        localhost
# Users        isucari
# Query_time distribution
#   1us
#  10us
# 100us
#   1ms
#  10ms  ################################################################
# 100ms  ########################################
#    1s
#  10s+
# Tables
#    SHOW TABLE STATUS FROM `isucari` LIKE 'items'\G
#    SHOW CREATE TABLE `isucari`.`items`\G
# EXPLAIN /*!50100 PARTITIONS*/
SELECT * FROM `items` WHERE `seller_id` = 2577 AND `status` IN ('on_sale','trading','sold_out') AND (`created_at` < '2019-08-12 04:11:20'  OR (`created_at` <= '2019-08-12 04:11:20' AND `id` < 7878)) ORDER BY `created_at` DESC, `id` DESC LIMIT 49\G

# Query 7: 869.33 QPS, 0.19x concurrency, ID 0xE070DA9421CA8C8D at byte 131519342
# Scores: V/M = 0.00
# Time range: 2024-08-18T01:37:24 to 2024-08-18T01:38:27
# Attribute    pct   total     min     max     avg     95%  stddev  median
# ============ === ======= ======= ======= ======= ======= ======= =======
# Count          9   54768
# Exec time      6     12s    32us    32ms   217us   596us   554us   113us
# Lock time     26      1s     7us    19ms    23us    33us   159us    14us
# Rows sent     22  53.48k       1       1       1       1       0       1
# Rows examine   0  53.48k       1       1       1       1       0       1
# Query size     1   2.02M      36      39   38.72   38.53    0.80   38.53
# String:
# Databases    isucari
# Hosts        localhost
# Users        isucari
# Query_time distribution
#   1us
#  10us  ####################################################
# 100us  ################################################################
#   1ms  ##
#  10ms  #
# 100ms
#    1s
#  10s+
# Tables
#    SHOW TABLE STATUS FROM `isucari` LIKE 'users'\G
#    SHOW CREATE TABLE `isucari`.`users`\G
# EXPLAIN /*!50100 PARTITIONS*/
SELECT * FROM `users` WHERE `id` = 1440\G

# Query 8: 1.92 QPS, 0.15x concurrency, ID 0x2C1B6BE83F13FC2B at byte 131034659
# Scores: V/M = 0.04
# Time range: 2024-08-18T01:37:24 to 2024-08-18T01:38:26
# Attribute    pct   total     min     max     avg     95%  stddev  median
# ============ === ======= ======= ======= ======= ======= ======= =======
# Count          0     119
# Exec time      4     10s    22ms   273ms    80ms   189ms    53ms    71ms
# Lock time      0     4ms    20us   180us    31us    49us    20us    25us
# Rows sent      0   1.02k       4      11    8.75   10.84    2.56   10.84
# Rows examine  14   5.68M  48.84k  48.88k  48.86k  46.68k       0  46.68k
# Query size     0  20.95k     177     181  180.29  174.84       0  174.84
# String:
# Databases    isucari
# Hosts        localhost
# Users        isucari
# Query_time distribution
#   1us
#  10us
# 100us
#   1ms
#  10ms  ################################################################
# 100ms  #################################
#    1s
#  10s+
# Tables
#    SHOW TABLE STATUS FROM `isucari` LIKE 'items'\G
#    SHOW CREATE TABLE `isucari`.`items`\G
# EXPLAIN /*!50100 PARTITIONS*/
SELECT * FROM `items` WHERE (`seller_id` = 465 OR `buyer_id` = 465) AND `status` IN ('on_sale','trading','sold_out','cancel','stop') ORDER BY `created_at` DESC, `id` DESC LIMIT 11\G
# Query 9: 1.66 QPS, 0.10x concurrency, ID 0x9A74397A1FB13CDE at byte 151693295
# Scores: V/M = 0.05
# Time range: 2024-08-18T01:37:24 to 2024-08-18T01:38:25
# Attribute    pct   total     min     max     avg     95%  stddev  median
# ============ === ======= ======= ======= ======= ======= ======= =======
# Count          0     101
# Exec time      3      6s     7ms   253ms    61ms   180ms    55ms    42ms
# Lock time      0     7ms    19us     4ms    70us   108us   340us    23us
# Rows sent      2   4.83k      49      49      49      49       0      49
# Rows examine   3   1.31M   3.84k  48.90k  13.26k  46.68k  14.79k   6.96k
# Query size     0  14.27k     140     149  144.69  143.84    3.03  143.84
# String:
# Databases    isucari
# Hosts        localhost
# Users        isucari
# Query_time distribution
#   1us
#  10us
# 100us
#   1ms  #####
#  10ms  ################################################################
# 100ms  ################
#    1s
#  10s+
# Tables
#    SHOW TABLE STATUS FROM `isucari` LIKE 'items'\G
#    SHOW CREATE TABLE `isucari`.`items`\G
# EXPLAIN /*!50100 PARTITIONS*/
SELECT * FROM `items` WHERE `status` IN ('on_sale','sold_out') AND category_id IN (21, 22, 23, 24) ORDER BY created_at DESC, id DESC LIMIT 49\G

# Query 10: 0.97 QPS, 0.06x concurrency, ID 0x4C0C6A2C3174E3A8 at byte 240958411
# Scores: V/M = 0.01
# Time range: 2024-08-18T01:37:24 to 2024-08-18T01:38:26
# Attribute    pct   total     min     max     avg     95%  stddev  median
# ============ === ======= ======= ======= ======= ======= ======= =======
# Count          0      60
# Exec time      2      4s    22ms   138ms    67ms   116ms    32ms    65ms
# Lock time      0     4ms    30us   327us    58us   204us    62us    33us
# Rows sent      0     660      11      11      11      11       0      11
# Rows examine   7   2.86M  48.84k  48.88k  48.86k  46.68k       0  46.68k
# Query size     0  16.66k     283     285  284.40  284.79       1  284.79
# String:
# Databases    isucari
# Hosts        localhost
# Users        isucari
# Query_time distribution
#   1us
#  10us
# 100us
#   1ms
#  10ms  ################################################################
# 100ms  #####################
#    1s
#  10s+
# Tables
#    SHOW TABLE STATUS FROM `isucari` LIKE 'items'\G
#    SHOW CREATE TABLE `isucari`.`items`\G
# EXPLAIN /*!50100 PARTITIONS*/
SELECT * FROM `items` WHERE (`seller_id` = 2951 OR `buyer_id` = 2951) AND `status` IN ('on_sale','trading','sold_out','cancel','stop') AND (`created_at` < '2019-08-12 12:39:20'  OR (`created_at` <= '2019-08-12 12:39:20' AND `id` < 38359)) ORDER BY `created_at` DESC, `id` DESC LIMIT 11\G
make[1]: Leaving directory '/home/isucon/isucari/webapp'
折りたたむ
```
