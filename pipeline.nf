process processData {
    // Define the container image that includes the required tool
    container 'biocontainers/samtools:v1.9-4-deb_cv1'
    
    input:
    path file
    
    script:
    """
    # Example command using samtools
    samtools view -Sb ${file} > results/output.bam
    """
}

workflow {
    // Create a channel from the BAM file
    Channel.fromPath('data/test.sam')
           .set { bam_file }

    // Pass the channel to the process
    processData(bam_file)
}