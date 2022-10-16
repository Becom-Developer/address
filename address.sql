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
    `address`       TEXT,                               -- 住所の登録状態 (例: '{}')
    `tel`           TEXT,                               -- 電話番号の登録状態 (例: '{}')
    `mail`          TEXT,                               -- メールアドレスの登録状態 (例: '{}')
    `deleted`       INTEGER,                            -- 削除フラグ (例: 0: 削除していない, 1: 削除済み)
    `created_ts`    TEXT,                               -- 登録日時 (例: '2022-10-16 15:41:41')
    `modified_ts`   TEXT                                -- 修正日時 (例: '2022-10-16 15:41:41')
);
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label` (                                  -- ラベル
    `id`            INTEGER PRIMARY KEY AUTOINCREMENT,  -- ID (例: 5)
    `type`          TEXT,                               -- タイブ (例: '')
    `name`          TEXT,                               -- 名前 (例: '自宅')
    `deleted`       INTEGER,                            -- 削除フラグ (例: 0: 削除していない, 1: 削除済み)
    `created_ts`    TEXT,                               -- 登録日時 (例: '2022-10-16 15:41:41')
    `modified_ts`   TEXT                                -- 修正日時 (例: '2022-10-16 15:41:41')
);
DROP TABLE IF EXISTS `used`;
CREATE TABLE `used` (                                   -- カードの所有状況
    `id`            INTEGER PRIMARY KEY AUTOINCREMENT,  -- ID (例: 5)
    `deleted`       INTEGER,                            -- 削除フラグ (例: 0: 削除していない, 1: 削除済み)
    `created_ts`    TEXT,                               -- 登録日時 (例: '2022-10-16 15:41:41')
    `modified_ts`   TEXT                                -- 修正日時 (例: '2022-10-16 15:41:41')
);
