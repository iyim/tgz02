.class public Lcom/alibaba/jsi/standard/JSContext;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/jsi/standard/JSContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/alibaba/jsi/standard/Events;

.field private b:Ljava/lang/String;

.field private final c:Lcom/alibaba/jsi/standard/JSEngine;

.field private d:J

.field private final e:J

.field private final f:Ljava/lang/Object;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/jsi/standard/JSContext;->h:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Ljava/lang/String;Lcom/alibaba/jsi/standard/JSEngine;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/jsi/standard/JSContext;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/alibaba/jsi/standard/JSContext;->g:Z

    .line 32
    iput-object p1, p0, Lcom/alibaba/jsi/standard/JSContext;->b:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/alibaba/jsi/standard/JSContext;->c:Lcom/alibaba/jsi/standard/JSEngine;

    .line 34
    iget-object p1, p0, Lcom/alibaba/jsi/standard/JSContext;->c:Lcom/alibaba/jsi/standard/JSEngine;

    .line 35
    invoke-virtual {p1}, Lcom/alibaba/jsi/standard/JSEngine;->getNativeInstance()J

    move-result-wide p1

    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSContext;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 34
    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/jsi/standard/JNIBridge;->nativeCreateContext(JLjava/lang/String;Ljava/util/HashSet;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/jsi/standard/JSContext;->d:J

    .line 36
    iget-wide p1, p0, Lcom/alibaba/jsi/standard/JSContext;->d:J

    const-wide/16 v2, 0x2

    invoke-static {v2, v3, p1, p2, v1}, Lcom/alibaba/jsi/standard/JNIBridge;->nativeCommand(JJ[Ljava/lang/Object;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/jsi/standard/JSContext;->e:J

    .line 38
    sget-object p1, Lcom/alibaba/jsi/standard/JSContext;->h:Ljava/util/Map;

    monitor-enter p1

    .line 39
    :try_start_0
    sget-object p2, Lcom/alibaba/jsi/standard/JSContext;->h:Ljava/util/Map;

    iget-wide v0, p0, Lcom/alibaba/jsi/standard/JSContext;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method private a()Z
    .locals 3

    .line 213
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/JSContext;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Context has been destroyed! Id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/alibaba/jsi/standard/JSContext;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsi"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getContext(J)Lcom/alibaba/jsi/standard/JSContext;
    .locals 2

    .line 207
    sget-object v0, Lcom/alibaba/jsi/standard/JSContext;->h:Ljava/util/Map;

    monitor-enter v0

    .line 208
    :try_start_0
    sget-object v1, Lcom/alibaba/jsi/standard/JSContext;->h:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/jsi/standard/JSContext;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 209
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .line 59
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSContext;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/jsi/standard/JSContext;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    monitor-exit v0

    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/alibaba/jsi/standard/JSContext;->c:Lcom/alibaba/jsi/standard/JSEngine;

    .line 65
    invoke-virtual {v1}, Lcom/alibaba/jsi/standard/JSEngine;->getNativeInstance()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alibaba/jsi/standard/JSContext;->d:J

    .line 64
    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/jsi/standard/JNIBridge;->nativeDisposeContext(JJ)V

    .line 66
    sget-object v1, Lcom/alibaba/jsi/standard/JSContext;->h:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    :try_start_1
    sget-object v2, Lcom/alibaba/jsi/standard/JSContext;->h:Ljava/util/Map;

    iget-wide v3, p0, Lcom/alibaba/jsi/standard/JSContext;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v1, 0x0

    .line 69
    :try_start_2
    iput-wide v1, p0, Lcom/alibaba/jsi/standard/JSContext;->d:J

    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lcom/alibaba/jsi/standard/JSContext;->g:Z

    .line 71
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    .line 68
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    .line 71
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public executeJS(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 9

    .line 121
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSContext;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/jsi/standard/JSContext;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 123
    monitor-exit v0

    return-object v2

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/alibaba/jsi/standard/JSContext;->c:Lcom/alibaba/jsi/standard/JSEngine;

    invoke-virtual {v1}, Lcom/alibaba/jsi/standard/JSEngine;->getNativeInstance()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/alibaba/jsi/standard/JSContext;->d:J

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Lcom/alibaba/jsi/standard/JNIBridge;->nativeExecuteJS(JJLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 129
    move-object v2, p1

    check-cast v2, Lcom/alibaba/jsi/standard/js/JSValue;

    .line 131
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object p1, p0, Lcom/alibaba/jsi/standard/JSContext;->c:Lcom/alibaba/jsi/standard/JSEngine;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/jsi/standard/JSEngine;->a(J)V

    return-object v2

    :catchall_0
    move-exception p1

    .line 131
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getException()Lcom/alibaba/jsi/standard/js/JSException;
    .locals 3

    .line 181
    invoke-direct {p0}, Lcom/alibaba/jsi/standard/JSContext;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0xc

    .line 185
    invoke-static {p0, v0}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    instance-of v2, v0, Lcom/alibaba/jsi/standard/js/JSException;

    if-eqz v2, :cond_1

    .line 187
    nop

    nop

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getGlobal(Lcom/alibaba/jsi/standard/js/JSValue;)Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/JSContext;->globalObject()Lcom/alibaba/jsi/standard/js/JSObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 157
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/jsi/standard/js/JSObject;->get(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;)Lcom/alibaba/jsi/standard/js/JSValue;

    move-result-object p1

    .line 158
    invoke-virtual {v0}, Lcom/alibaba/jsi/standard/js/JSObject;->delete()V

    return-object p1
.end method

.method public getGlobal(Ljava/lang/String;)Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/alibaba/jsi/standard/JSContext;->globalObject()Lcom/alibaba/jsi/standard/js/JSObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 167
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/jsi/standard/js/JSObject;->get(Lcom/alibaba/jsi/standard/JSContext;Ljava/lang/String;)Lcom/alibaba/jsi/standard/js/JSValue;

    move-result-object p1

    .line 168
    invoke-virtual {v0}, Lcom/alibaba/jsi/standard/js/JSObject;->delete()V

    return-object p1
.end method

.method public getId()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/JSContext;->e:J

    return-wide v0
.end method

.method public getJSEngine()Lcom/alibaba/jsi/standard/JSEngine;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSContext;->c:Lcom/alibaba/jsi/standard/JSEngine;

    return-object v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 203
    iget-wide v0, p0, Lcom/alibaba/jsi/standard/JSContext;->d:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSContext;->b:Ljava/lang/String;

    return-object v0
.end method

.method public globalObject()Lcom/alibaba/jsi/standard/js/JSObject;
    .locals 3

    .line 141
    invoke-direct {p0}, Lcom/alibaba/jsi/standard/JSContext;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0xa

    .line 145
    invoke-static {p0, v0}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    instance-of v2, v0, Lcom/alibaba/jsi/standard/js/JSObject;

    if-eqz v2, :cond_1

    .line 147
    nop

    nop

    return-object v0

    :cond_1
    return-object v1
.end method

.method public hasException()Z
    .locals 2

    .line 173
    invoke-direct {p0}, Lcom/alibaba/jsi/standard/JSContext;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xb

    .line 176
    invoke-static {p0, v0}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isDisposed()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/alibaba/jsi/standard/JSContext;->g:Z

    return v0
.end method

.method public reset()V
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/alibaba/jsi/standard/JSContext;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/jsi/standard/JSContext;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    monitor-exit v0

    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/alibaba/jsi/standard/JSContext;->c:Lcom/alibaba/jsi/standard/JSEngine;

    .line 93
    invoke-virtual {v1}, Lcom/alibaba/jsi/standard/JSEngine;->getNativeInstance()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alibaba/jsi/standard/JSContext;->d:J

    .line 92
    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/jsi/standard/JNIBridge;->nativeResetContext(JJ)V

    .line 94
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setEventListener(Lcom/alibaba/jsi/standard/Events;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/jsi/standard/JSContext;->a:Lcom/alibaba/jsi/standard/Events;

    return-void
.end method

.method public throwException(Lcom/alibaba/jsi/standard/js/JSException;)V
    .locals 3

    .line 193
    invoke-direct {p0}, Lcom/alibaba/jsi/standard/JSContext;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const/16 v0, 0xd

    const/4 v1, 0x1

    .line 196
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/alibaba/jsi/standard/js/Bridge;->cmd(Lcom/alibaba/jsi/standard/JSContext;I[Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
