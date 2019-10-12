node
{
    stage ('Checkout')
    {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/altaratz/devops-exercise.git']]])
    }

    stage ('Build Image')
    {
        echo 'Docker build'
        sh 'docker build -t krejenkinstest/testing:${BUILD_NUMBER} .'
    }

    stage ('Deploy to DockerHub')
    {
        echo 'Pushing to DockerHub'
        sh 'docker push docker push krejenkinstest/testing:${BUILD_NUMBER}'
    }

}