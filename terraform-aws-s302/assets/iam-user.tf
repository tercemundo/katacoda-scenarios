resource "aws_iam_user" "users" {
     name = var.project-mulos-users[count.index]
     count = length(var.project-mulos-users)
}
