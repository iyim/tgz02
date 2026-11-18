.class public interface abstract Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;
.super Ljava/lang/Object;
.source "CacheEvent.java"


# virtual methods
.method public abstract getCacheKey()Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getCacheLimit()J
.end method

.method public abstract getCacheSize()J
.end method

.method public abstract getElapsed()J
.end method

.method public abstract getEvictionReason()Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener$EvictionReason;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getException()Ljava/io/IOException;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getItemSize()J
.end method

.method public abstract getResourceId()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method
