package org.apache.hadoop.hive.ql.index.btreeindex;

import java.util.List;
import java.util.Set;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.hive.conf.HiveConf;
import org.apache.hadoop.hive.metastore.api.Index;
import org.apache.hadoop.hive.metastore.api.Table;
import org.apache.hadoop.hive.ql.exec.Task;
import org.apache.hadoop.hive.ql.hooks.ReadEntity;
import org.apache.hadoop.hive.ql.hooks.WriteEntity;
import org.apache.hadoop.hive.ql.index.AbstractIndexHandler;
import org.apache.hadoop.hive.ql.index.HiveIndexHandler;
import org.apache.hadoop.hive.ql.index.HiveIndexQueryContext;
import org.apache.hadoop.hive.ql.metadata.HiveException;
import org.apache.hadoop.hive.ql.metadata.Partition;
import org.apache.hadoop.hive.ql.parse.ParseContext;
import org.apache.hadoop.hive.ql.plan.ExprNodeDesc;
import trees.BPlusTree;

public class BTreeIndexHandler extends AbstractIndexHandler {
    private Configuration configuration;
    
    @Override
    public Configuration getConf() {
        // TODO Auto-generated method stub
        return configuration;
    }

    @Override
    public void setConf(Configuration conf) {
        // TODO Auto-generated method stub
        configuration = conf;

    }

    @Override
    public boolean usesIndexTable() {
        return false;
    }

    @Override
    public void analyzeIndexDefinition(Table baseTable, Index index,
            Table indexTable) throws HiveException {
        // TODO Auto-generated method stub

    }

    @Override
    public List<Task<?>> generateIndexBuildTaskList(
            org.apache.hadoop.hive.ql.metadata.Table baseTbl, Index index,
            List<Partition> indexTblPartitions,
            List<Partition> baseTblPartitions,
            org.apache.hadoop.hive.ql.metadata.Table indexTbl,
            Set<ReadEntity> inputs, Set<WriteEntity> outputs)
            throws HiveException {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void generateIndexQuery(List<Index> indexes, ExprNodeDesc predicate,
            ParseContext pctx, HiveIndexQueryContext queryContext) {
        // TODO Auto-generated method stub

    }

    @Override
    public boolean checkQuerySize(long inputSize, HiveConf conf) {
        // TODO Auto-generated method stub
        return false;
    }
}