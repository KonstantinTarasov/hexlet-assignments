require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task = tasks(:one)
  end

  test 'can open index page' do
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_task_path
    assert_response :success
  end

  test "should create task" do
    task_params = { creator: 'Den', name: 'New Task', status: 'new', completed: true }
    post tasks_path, params: { task: task_params }

    created_task = Task.find_by(task_params)
    assert { created_task }
    
    assert_redirected_to task_path(created_task)
  end

  test 'should show task' do
    get task_path(@task)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_path(@task)
    assert_response :success
  end

  test "should update task" do
    patch task_path(@task), params: { task: { name: "updated" } }

    assert_redirected_to task_path(@task)
    # Reload association to fetch updated data and assert that title is updated.
    @task.reload
    assert_equal "updated", @task.name
  end

  test "should destroy task" do
    delete task_path(@task)

    assert_not(Task.find_by(id: @task.id))

    assert_redirected_to root_path
  end

end
