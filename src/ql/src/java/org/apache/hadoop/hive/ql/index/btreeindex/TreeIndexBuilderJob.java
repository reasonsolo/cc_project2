package org.apache.hadoop.hive.ql.index.btreeindex;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.io.ByteArrayOutputStream;  
import java.io.DataOutputStream;  

import org.apache.hadoop.conf.Configuration;

import org.apache.hadoop.io.Writable;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.mapreduce.Reducer;

import trees.BPlusTree;

public class TreeIndexBuilderJob {

    public static class TreeIndexMapper //extends Mapper<>
    {
        // TODO: 
    }
    
    public static class TreeIndexReducer //extends Reducer<>
    {
        // TODO: create a b+tree and insert everything into the tree
    }
    
    public void launchIndexBuilderJob() 
    {
        // TODO
    }
    
    public void setupIndexBuilderJob() 
    {
        // TODO
    }
    
}
