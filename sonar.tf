resource "helm_release" "sonar" {
  name       = "sonar"
  create_namespace = true
  namespace = "testing"
  repository = "https://SonarSource.github.io/helm-chart-sonarqube"
  chart      = "sonarqube"

  values = [
    "${file("sonar-values.yml")}"
  ]
}