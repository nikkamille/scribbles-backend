class NotebookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title
end
