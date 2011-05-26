module PrivateElements

  def user_can_access_private_target?(user)
    target = try(:comment).try(:target)
    is_private = target ? target.is_private? : false

    is_private ? target.watcher_ids.include?(user.id) : true
  end

end
