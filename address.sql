DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (                                -- 住所
    `id`            INTEGER PRIMARY KEY AUTOINCREMENT,  -- ID (例: 5)
    `label`         TEXT,                               -- ラベル (例: '自宅')
    `zipcode`       TEXT,                               -- 郵便番号 (例: '8120041')
    `pref`          TEXT,                               -- 都道府県 (例: '福岡県')
    `city`          TEXT,                               -- 市区町村 (例: '福岡市博多区')
    `town`          TEXT,                               -- 以下の住所 (例: '吉塚１丁目')
    `deleted`       INTEGER,                            -- 削除フラグ (例: 0: 削除していない, 1: 削除済み)
    `created_ts`    TEXT,                               -- 登録日時 (例: '2022-10-16 15:41:41')
    `modified_ts`   TEXT                                -- 修正日時 (例: '2022-10-16 15:41:41')
);
CREATE TABLE `tel` (                                    -- 電話
    `id`            INTEGER PRIMARY KEY AUTOINCREMENT,  -- ID (例: 5)
    `label`         TEXT,                               -- ラベル (例: '自宅')
    `number`        TEXT,                               -- 電話番号 (例: '08098769876')
    `deleted`       INTEGER,                            -- 削除フラグ (例: 0: 削除していない, 1: 削除済み)
    `created_ts`    TEXT,                               -- 登録日時 (例: '2022-10-16 15:41:41')
    `modified_ts`   TEXT                                -- 修正日時 (例: '2022-10-16 15:41:41')
);
CREATE TABLE `mail` (                                   -- メールアドレス
    `id`            INTEGER PRIMARY KEY AUTOINCREMENT,  -- ID (例: 5)
    `label`         TEXT,                               -- ラベル (例: '自宅')
    `email`         TEXT,                               -- メールアドレス (例: 'info@becom.co.jp')
    `deleted`       INTEGER,                            -- 削除フラグ (例: 0: 削除していない, 1: 削除済み)
    `created_ts`    TEXT,                               -- 登録日時 (例: '2022-10-16 15:41:41')
    `modified_ts`   TEXT                                -- 修正日時 (例: '2022-10-16 15:41:41')
);
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (                                   -- カード
    `id`            INTEGER PRIMARY KEY AUTOINCREMENT,  -- ID (例: 5)
    `title`         TEXT,                               -- タイトル (例: '磯野カツオ')
    `entry`         TEXT,                               -- 登録状態 (例: '{"tel":[3,8],"address":[4,5],"mail":[6,9]}')
    `user_id`       INTEGER,                            -- ユーザーID (例: 5)
    `permission`    TEXT,                               -- カードの取り扱い権限 (例: 'rwrwrw': すべての人が読み書き可能)
    `deleted`       INTEGER,                            -- 削除フラグ (例: 0: 削除していない, 1: 削除済み)
    `created_ts`    TEXT,                               -- 登録日時 (例: '2022-10-16 15:41:41')
    `modified_ts`   TEXT                                -- 修正日時 (例: '2022-10-16 15:41:41')
);
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label` (                                  -- ラベル
    `id`            INTEGER PRIMARY KEY AUTOINCREMENT,  -- ID (例: 5)
    `title`         TEXT,                               -- タイトル (例: '自宅')
    `deleted`       INTEGER,                            -- 削除フラグ (例: 0: 削除していない, 1: 削除済み)
    `created_ts`    TEXT,                               -- 登録日時 (例: '2022-10-16 15:41:41')
    `modified_ts`   TEXT                                -- 修正日時 (例: '2022-10-16 15:41:41')
);
DROP TABLE IF EXISTS `owner`;
CREATE TABLE `owner` (                                  -- カードの所有者情報
    `id`            INTEGER PRIMARY KEY AUTOINCREMENT,  -- ID (例: 5)
    `user_id`       INTEGER,                            -- ユーザーID (例: 5)
    `card_id`       INTEGER,                            -- カードID (例: 5)
    `permission`    TEXT,                               -- カードの取り扱い権限 (例: 'rwrwrw': すべての人が読み書き可能)
    `deleted`       INTEGER,                            -- 削除フラグ (例: 0: 削除していない, 1: 削除済み)
    `created_ts`    TEXT,                               -- 登録日時 (例: '2022-10-16 15:41:41')
    `modified_ts`   TEXT                                -- 修正日時 (例: '2022-10-16 15:41:41')
);
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (                                  -- カードのグループ
    `id`            INTEGER PRIMARY KEY AUTOINCREMENT,  -- ID (例: 5)
    `title`         TEXT,                               -- タイトル (例: '福岡のウイスキーバー')
    `memo`          TEXT,                               -- メモ (例: '福岡県内の神社所在地')
    `permission`    TEXT,                               -- グループの取り扱い権限 (例: 'rwrwrw': すべての人が読み書き可能)
    `deleted`       INTEGER,                            -- 削除フラグ (例: 0: 削除していない, 1: 削除済み)
    `created_ts`    TEXT,                               -- 登録日時 (例: '2022-10-16 15:41:41')
    `modified_ts`   TEXT                                -- 修正日時 (例: '2022-10-16 15:41:41')
);
DROP TABLE IF EXISTS `group_list`;
CREATE TABLE `group_list` (                            -- グループの所有者情報
    `id`            INTEGER PRIMARY KEY AUTOINCREMENT,  -- ID (例: 5)
    `user_id`       INTEGER,                            -- ユーザーID (例: 5)
    `group_id`      INTEGER,                            -- グループID (例: 5)
    `deleted`       INTEGER,                            -- 削除フラグ (例: 0: 削除していない, 1: 削除済み)
    `created_ts`    TEXT,                               -- 登録日時 (例: '2022-10-16 15:41:41')
    `modified_ts`   TEXT                                -- 修正日時 (例: '2022-10-16 15:41:41')
);
