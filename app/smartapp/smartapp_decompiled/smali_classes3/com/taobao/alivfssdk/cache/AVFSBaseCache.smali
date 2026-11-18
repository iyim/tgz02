.class public abstract Lcom/taobao/alivfssdk/cache/AVFSBaseCache;
.super Ljava/lang/Object;
.source "AVFSBaseCache.java"

# interfaces
.implements Lcom/taobao/alivfssdk/cache/IAVFSCache;


# static fields
.field private static final TAG:Ljava/lang/String; = "AVFSBaseCache"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public containObjectForKey(Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectContainedCallback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 19
    nop

    nop

    new-instance v1, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$1;

    invoke-direct {v1, p0, p2}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$1;-><init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectContainedCallback;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->containObjectForKey(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectContainedCallback2;)V

    return-void
.end method

.method public containObjectForKey(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectContainedCallback2;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    new-instance v0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$2;-><init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectContainedCallback2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public containObjectForKey(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 14
    nop

    nop

    invoke-virtual {p0, p1, v0}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->containObjectForKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public inputStreamForKey(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 159
    nop

    nop

    invoke-virtual {p0, p1, v0}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->inputStreamForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public inputStreamForKey(Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamGetCallback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 164
    nop

    nop

    new-instance v1, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$11;

    invoke-direct {v1, p0, p2}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$11;-><init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamGetCallback;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->inputStreamForKey(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamGetCallback2;)V

    return-void
.end method

.method public inputStreamForKey(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamGetCallback2;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 174
    new-instance v0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$12;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$12;-><init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamGetCallback2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public lengthForKey(Ljava/lang/String;)J
    .locals 2

    const/4 v0, 0x0

    .line 231
    nop

    nop

    invoke-virtual {p0, p1, v0}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->lengthForKey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public objectForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
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

    const/4 v0, 0x0

    .line 40
    nop

    nop

    invoke-virtual {p0, p1, v0}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->objectForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public objectForKey(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
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

    const/4 v0, 0x0

    .line 46
    nop

    nop

    invoke-virtual {p0, p1, v0, p2}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->objectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public objectForKey(Ljava/lang/String;Ljava/lang/Class;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback;)V
    .locals 2
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

    const/4 v0, 0x0

    .line 51
    nop

    nop

    new-instance v1, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$3;

    invoke-direct {v1, p0, p3}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$3;-><init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback;)V

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->objectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback2;)V

    return-void
.end method

.method public objectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback2;)V
    .locals 7
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

    .line 61
    new-instance v6, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$4;-><init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {v6}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removeAllObject(Lcom/taobao/alivfssdk/cache/IAVFSCache$OnAllObjectRemoveCallback;)V
    .locals 1

    .line 148
    new-instance v0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$10;

    invoke-direct {v0, p0, p1}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$10;-><init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnAllObjectRemoveCallback;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removeObjectForKey(Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 128
    nop

    nop

    new-instance v1, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$8;

    invoke-direct {v1, p0, p2}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$8;-><init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->removeObjectForKey(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback2;)V

    return-void
.end method

.method public removeObjectForKey(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback2;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 138
    new-instance v0, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$9;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$9;-><init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removeObjectForKey(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 123
    nop

    nop

    invoke-virtual {p0, p1, v0}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->removeObjectForKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setObjectForKey(Ljava/lang/String;Ljava/lang/Object;ILcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 101
    new-instance p3, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$6;

    invoke-direct {p3, p0, p4}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$6;-><init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback;)V

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->setObjectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback2;)V

    return-void
.end method

.method public setObjectForKey(Ljava/lang/String;Ljava/lang/Object;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->setObjectForKey(Ljava/lang/String;Ljava/lang/Object;ILcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback;)V

    return-void
.end method

.method public setObjectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback2;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 111
    new-instance v7, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$7;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$7;-><init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-static {v7}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setObjectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback2;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    new-instance v6, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$5;-><init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v6}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setObjectForKey(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, p1, v0, p2}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->setObjectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setObjectForKey(Ljava/lang/String;Ljava/lang/Object;I)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->setObjectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public setObjectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->setObjectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public setStreamForKey(Ljava/lang/String;Ljava/io/InputStream;ILcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 209
    new-instance p3, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$13;

    invoke-direct {p3, p0, p4}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$13;-><init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback;)V

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->setStreamForKey(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback2;)V

    return-void
.end method

.method public setStreamForKey(Ljava/lang/String;Ljava/io/InputStream;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->setStreamForKey(Ljava/lang/String;Ljava/io/InputStream;ILcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback;)V

    return-void
.end method

.method public setStreamForKey(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ILcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback2;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 219
    new-instance p4, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$14;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache$14;-><init>(Lcom/taobao/alivfssdk/cache/AVFSBaseCache;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback2;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-static {p4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setStreamForKey(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback2;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 204
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->setStreamForKey(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ILcom/taobao/alivfssdk/cache/IAVFSCache$OnStreamSetCallback2;)V

    return-void
.end method

.method public setStreamForKey(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 184
    nop

    nop

    invoke-virtual {p0, p1, v0, p2}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->setStreamForKey(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public setStreamForKey(Ljava/lang/String;Ljava/io/InputStream;I)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->setStreamForKey(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;I)Z

    move-result p1

    return p1
.end method

.method public setStreamForKey(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;->setStreamForKey(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;I)Z

    move-result p1

    return p1
.end method
