# WEAR

## DB設計

### users_table
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true |
|password|string|null: false|

#### Assosiation
- has_many :models, through: :favorite_models
- has_many :favorite_models, dependent: :destroy

### models_table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|image|string|null: false|

#### Assosiation
- has_many :users, through: :favorite_models
- has_many :favorite_models, dependent: :destroy

### favorite_models_table
|Column|Type|Options|
|------|----|-------|
|user|references|foreign_key: true|
|model|references|foreign_key: true|

#### Assosiation
- belongs_to :model
- belongs_to :user
