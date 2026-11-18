.class public interface abstract Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;
.super Ljava/lang/Object;
.source "CacheEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener$EvictionReason;
    }
.end annotation


# virtual methods
.method public abstract onEviction(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)Z
.end method

.method public abstract onHit(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V
.end method

.method public abstract onMiss(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V
.end method

.method public abstract onReadException(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V
.end method

.method public abstract onRemoveSuccess(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V
.end method

.method public abstract onWriteAttempt(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V
.end method

.method public abstract onWriteException(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V
.end method

.method public abstract onWriteSuccess(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V
.end method
