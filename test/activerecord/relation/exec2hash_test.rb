require "test_helper"

class Activerecord::Relation::Exec2hashTest < Minitest::Test
  def after_teardown
    Post.delete_all

    super
  end

  def test_basic_pattern
    post_1 = Post.create(content: 'text1')
    post_2 = Post.create(content: 'text2')

    posts = Post.all.exec_to_hash

    assert_equal(posts, [{'id' => post_1.id, 'content' => 'text1'}, {'id' => post_2.id, 'content' => 'text2'}])
  end

  def test_basic_null_relation_pattern
    Post.create(content: 'text1')
    Post.create(content: 'text2')

    posts = Post.where(id: 0).exec_to_hash

    assert_equal(posts, [])
  end
end
