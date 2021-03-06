class Pokemon
  attr_accessor :id, :name, :type, :db, :hp

  def initialize(id, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
    @hp = 60
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id_num, db)
    db.execute("SELECT * FROM pokemon WHERE id=?", id_num)
  end

end
