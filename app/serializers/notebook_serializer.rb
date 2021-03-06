class NotebookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :notes
end
