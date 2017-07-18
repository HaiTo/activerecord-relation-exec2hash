require "test_helper"

class Activerecord::Relation::Exec2hashTest < Minitest::Test
  def test_it_does_something_useful
    Post.create(content: 'text1')
    Post.create(content: 'text2')

    posts = Post.all.exec_to_hash

    assert_equal(posts, [{'id' => 1, 'content' => 'text1'}, {'id' => 2, 'content' => 'text2'}])
  end
end
