
class TodoList
  attr

  def initialize(list_arr)
    @list_arr = list_arr
  end

  def get_items #(*index)
    @list_arr

    # master =  *index

    # if !master.any?
    #   @list_array
    # else
    #   @list_array[master[0]]
    # end
      # dont need a new method called get_item because this will handle 
      # an argument if provided or just return he full array if not

  end

  def add_item(item)
    @list_arr << item
  end

  def delete_item(item)
    @list_arr = @list_arr.delete_if {|arr_item| arr_item == item }
  end

  def get_item(index)
    @list_arr[index]
  end
end