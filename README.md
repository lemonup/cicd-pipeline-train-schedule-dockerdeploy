# cicd-pipeline-train-schedule-dockerdeploy

This is a simple train schedule app written using nodejs. It is intended to be used as a sample application for a series of hands-on learning activities.

## Running the app

You need a Java JDK 7 or later to run the build. You can run the build like this:

    ./gradlew build

You can run the app with:

    ./gradlew npm_start

Once it is running, you can access it in a browser at http://localhost:8080

pipeline {
    agent any
    //
    parameters {
     choice(
         name: 'env',
         choices: ['dev', 'staging', 'production'],
         description: "choose env")

     choice(
         name: 'version',
         choices: ['2.1' ,'latest'],
         description: "version to build" )
    }

    stages {
        stage('Deploy') {
            steps {
                echo "using ${params.env} env"
                echo "using ${params.version}"
            }
        }
    }
}
