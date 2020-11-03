# Prometheus Data Inspector

1. Fetch data from prometheus federation endpoint ( data are stored for later usage and cache in /data container folder )
2. Sum series by namespace and by count

## Run

```bash
$ docker run -it --rm -v ${PWD}/prometheus-data-inspector-cache:/data  elmariofredo/prometheus-data-inspector:v0.1 https://prometheus.apps-k8s-pdc-blue.cz.infra/federate 'match[]={__name__=~".+"}'

Top namespaces:
 134605 namespace="kube-system"

Top series:
   6096 node_cpu_seconds_total
   4257 node_nfs_requests_total
   2080 node_scrape_collector_success
   2080 node_scrape_collector_duration_seconds
   1526 node_filesystem_device_error
   1524 node_cpu_guest_seconds_total
   1505 node_disk_written_bytes_total
   1505 node_disk_writes_merged_total
   1505 node_disk_writes_completed_total
   1505 node_disk_write_time_seconds_total
   1505 node_disk_reads_merged_total
   1505 node_disk_reads_completed_total
   1505 node_disk_read_time_seconds_total
   1505 node_disk_read_bytes_total
   1505 node_disk_io_time_weighted_seconds_total
   1505 node_disk_io_time_seconds_total
   1505 node_disk_io_now
   1505 node_disk_discards_merged_total
   1505 node_disk_discards_completed_total
   1505 node_disk_discarded_sectors_total
   1505 node_disk_discard_time_seconds_total
   1315 prometheus_target_sync_length_seconds
   1064 net_conntrack_dialer_conn_failed_total
    984 node_network_up
    984 node_network_transmit_queue_length
    984 node_network_transmit_packets_total
    984 node_network_transmit_fifo_total
    984 node_network_transmit_errs_total
    984 node_network_transmit_drop_total
    984 node_network_transmit_compressed_total
```
