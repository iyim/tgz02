.class public Lcom/alibaba/genie/waft/gcs/rpc/GenieServicePublisher;
.super Lcom/taobao/aranger/core/ipc/provider/ARangerProvider;
.source "GenieServicePublisher.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GenieServicePublisher"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/taobao/aranger/core/ipc/provider/ARangerProvider;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onCreate()Z
    .locals 5

    .line 21
    invoke-virtual {p0}, Lcom/alibaba/genie/waft/gcs/rpc/GenieServicePublisher;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 25
    invoke-static {v0}, Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;->getInstance(Landroid/content/Context;)Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/genie/waft/gcs/rpc/GenieRPCInitializer;->discover()V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate() called. discover time = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieServicePublisher"

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
