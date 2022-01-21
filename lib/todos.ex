defmodule Todos do
  def create_todos do
    # no_tasks = IO.gets('Enter the no of tasks : ')
    # {no_tasks, _q} = Integer.parse(no_tasks)
    # no_tasks

    # formatted code using pipe operator
    {no_tasks, _} = IO.gets("Enter the no of tasks: ") |> Integer.parse()

    for _ <- 1..no_tasks do
      IO.gets("Enter task: ") |> String.trim()
    end
  end

  def temp_todos do
    ["eat", "movie", "homework", "shopping"]
  end

  def contains?(list, criteria) do
    Enum.member?(list, criteria)
  end

  def keyword_search(items, criteria) do
    for list <- items, String.contains?(list, criteria) do
      list
    end
  end

  def delete_element(items, criteria) do
    List.delete(items, criteria)
  end

  def delete_if_element(items, criteria) do
    if contains?(items, criteria) do
      List.delete(items, criteria)
    else
      :not_found
    end
  end

  def add_element(items, criteria) do
    List.insert_at(items,-1,criteria)
  end

  def random_tasks(list) do
    Enum.take_random(list, 1)
  end
end
