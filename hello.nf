process sayHello {
    container 'ubuntu:latest'
    
    script:
    """
    echo "Hello from an Ubuntu container"
    """
}

workflow {
    sayHello()
}