class NoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :content, :date, :notebook_id

  belongs_to :notebook
end
