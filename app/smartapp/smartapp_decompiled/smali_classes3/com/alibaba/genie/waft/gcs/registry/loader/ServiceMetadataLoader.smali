.class public Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;
.super Landroid/os/AsyncTask;
.source "ServiceMetadataLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final GENIE_SERVICE_PUBLISHER:Ljava/lang/String; = "com.alibaba.genie.waft.gcs.rpc.GenieServicePublisher"

.field private static final GENIE_SERVICE_REGISTRY_PERMISSION:Ljava/lang/String; = "com.alibaba.genie.waft.gcs.rpc.SERVICE_REGISTRY"

.field private static final GENIE_WAFT_GCS_STARTUP:Ljava/lang/String; = "waft_gcs_startup"

.field private static final TAG:Ljava/lang/String; = "ServiceMetadataLoader"


# instance fields
.field private mPm:Landroid/content/pm/PackageManager;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "ServiceMetadataLoader"

    const-string v2, "loadInBackground() called"

    .line 46
    invoke-static {v1, v2}, Lcom/alibaba/genie/waft/gcs/registry/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;->mStartTime:J

    .line 50
    iget-object v2, v0, Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;->mPm:Landroid/content/pm/PackageManager;

    const-string v3, "com.alibaba.genie.waft.gcs.rpc.SERVICE_REGISTRY"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x88

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 59
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadInBackground() called getPackagesHoldingPermissions PgkSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;->mStartTime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-static {v1, v4}, Lcom/alibaba/genie/waft/gcs/registry/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    if-nez v5, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-nez v5, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_9

    aget-object v8, v5, v7

    if-nez v8, :cond_3

    goto/16 :goto_3

    .line 74
    :cond_3
    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    const-string v10, "com.alibaba.genie.waft.gcs.rpc.GenieServicePublisher"

    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 75
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doInBackground() match. pkgName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " , processName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/alibaba/genie/waft/gcs/registry/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    if-nez v9, :cond_4

    goto :goto_3

    .line 82
    :cond_4
    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 83
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 84
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    .line 86
    invoke-virtual {v9, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 87
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_2

    :cond_6
    const-string v12, "waft_gcs_startup"

    .line 91
    invoke-static {v15, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 92
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doInBackground() called. is startup. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 96
    :cond_7
    new-instance v14, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;

    iget-object v13, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v3, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    const-string v18, "1.0"

    move-object/from16 v16, v12

    move-object v12, v14

    move-object v0, v14

    move-object/from16 v14, v16

    move-object/from16 v17, v15

    move-object v15, v3

    move-object/from16 v16, v11

    invoke-direct/range {v12 .. v18}, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_a
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;",
            ">;)V"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute() called with: serviceMetadata = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceMetadataLoader"

    invoke-static {v1, v0}, Lcom/alibaba/genie/waft/gcs/registry/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;->getInstance()Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;->collect(Ljava/util/List;)V

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPostExecute: time = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/genie/waft/gcs/registry/loader/ServiceMetadataLoader;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/genie/waft/gcs/registry/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
