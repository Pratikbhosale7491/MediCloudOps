output "eks_cluster_name" {
  value = aws_eks_cluster.medi_cluster.name
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.medi_ecs.name
}
