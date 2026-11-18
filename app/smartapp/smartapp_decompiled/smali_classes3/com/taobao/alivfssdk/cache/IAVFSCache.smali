.class public interface abstract Lcom/taobao/alivfssdk/cache/IAVFSCache;
.super Ljava/lang/Object;
.source "IAVFSCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback2;,
        Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback;,
        Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamGetCallback2;,
        Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamGetCallback;,
        Lcom/taobao/alivfssdk/cache/IAVFSCache$OnAllObjectRemoveCallback;,
        Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback2;,
        Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback;,
        Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback2;,
        Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback;,
        Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback2;,
        Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback;,
        Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectContainedCallback2;,
        Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectContainedCallback;
    }
.end annotation


# static fields
.field public static final ENCRYPTED:I = 0x1

.field public static final NAME_MD5:I = 0x8

.field public static final PERSIST:I = 0x4

.field public static final VERIFY:I = 0x2


# virtual methods
.method public abstract clearMemCache()V
.end method

.method public abstract containObjectForKey(Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectContainedCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract containObjectForKey(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectContainedCallback2;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract containObjectForKey(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract containObjectForKey(Ljava/lang/String;Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract extendsKeysForKey(Ljava/lang/String;)Ljava/util/List;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract inputStreamForKey(Ljava/lang/String;)Ljava/io/InputStream;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract inputStreamForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract inputStreamForKey(Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamGetCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract inputStreamForKey(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamGetCallback2;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract lengthForKey(Ljava/lang/String;)J
.end method

.method public abstract lengthForKey(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract objectForKey(Ljava/lang/String;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract objectForKey(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract objectForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract objectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract objectForKey(Ljava/lang/String;Ljava/lang/Class;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract objectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback2;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback2<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract removeAllObject(Lcom/taobao/alivfssdk/cache/IAVFSCache$OnAllObjectRemoveCallback;)V
.end method

.method public abstract removeAllObject()Z
.end method

.method public abstract removeObjectForKey(Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract removeObjectForKey(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback2;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract removeObjectForKey(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract removeObjectForKey(Ljava/lang/String;Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setObjectForKey(Ljava/lang/String;Ljava/lang/Object;ILcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setObjectForKey(Ljava/lang/String;Ljava/lang/Object;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setObjectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback2;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setObjectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback2;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setObjectForKey(Ljava/lang/String;Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setObjectForKey(Ljava/lang/String;Ljava/lang/Object;I)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setObjectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setObjectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setStreamForKey(Ljava/lang/String;Ljava/io/InputStream;ILcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setStreamForKey(Ljava/lang/String;Ljava/io/InputStream;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setStreamForKey(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ILcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback2;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setStreamForKey(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback2;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setStreamForKey(Ljava/lang/String;Ljava/io/InputStream;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setStreamForKey(Ljava/lang/String;Ljava/io/InputStream;I)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setStreamForKey(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setStreamForKey(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;I)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
