.class Lcom/alibaba/jsi/standard/JNIBridge;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static native nativeCommand(JJ[Ljava/lang/Object;)J
.end method

.method public static native nativeCreateContext(JLjava/lang/String;Ljava/util/HashSet;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation
.end method

.method public static native nativeDisposeContext(JJ)V
.end method

.method public static native nativeDisposeInstance(J)V
.end method

.method public static native nativeExecuteJS(JJLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public static native nativeGetVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeInitInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static native nativeOnLoop(J)V
.end method

.method public static native nativeOnLowMemory(J)V
.end method

.method public static native nativeResetContext(JJ)V
.end method

.method public static native nativeSetInfo(JLjava/lang/String;Ljava/lang/String;J)Z
.end method

.method public static native nativeStartTrace(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native nativeStopTrace(J)V
.end method

.method static onNativeEvent(JIJ[Ljava/lang/Object;)J
    .locals 15
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    move/from16 v0, p2

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown JSI native event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsi"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 81
    :pswitch_0
    invoke-static/range {p0 .. p1}, Lcom/alibaba/jsi/standard/JSEngine;->getInstance(J)Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/jsi/standard/JSEngine;->getContext(J)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v1, v0, Lcom/alibaba/jsi/standard/JSContext;->a:Lcom/alibaba/jsi/standard/Events;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alibaba/jsi/standard/JSContext;->a:Lcom/alibaba/jsi/standard/Events;

    invoke-virtual {v1, v0}, Lcom/alibaba/jsi/standard/Events;->onReload(Lcom/alibaba/jsi/standard/JSContext;)V

    goto/16 :goto_0

    .line 72
    :pswitch_1
    invoke-static/range {p0 .. p1}, Lcom/alibaba/jsi/standard/JSEngine;->getInstance(J)Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/jsi/standard/JSEngine;->getContext(J)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/alibaba/jsi/standard/JSContext;->reset()V

    goto/16 :goto_0

    :pswitch_2
    if-eqz v3, :cond_1

    .line 58
    array-length v0, v3

    if-ne v0, v6, :cond_1

    aget-object v0, v3, v7

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 59
    aget-object v0, v3, v7

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 60
    invoke-static/range {p0 .. p1}, Lcom/alibaba/jsi/standard/JSEngine;->getInstance(J)Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v3

    .line 61
    invoke-virtual {v3, v1, v2}, Lcom/alibaba/jsi/standard/JSEngine;->getContext(J)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1}, Lcom/alibaba/jsi/standard/JSContext;->dispose()V

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v3, v1}, Lcom/alibaba/jsi/standard/JSEngine;->removeContext(Lcom/alibaba/jsi/standard/JSContext;)V

    goto :goto_0

    :pswitch_3
    if-eqz v3, :cond_0

    .line 50
    array-length v0, v3

    if-ne v0, v6, :cond_0

    aget-object v0, v3, v7

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    aget-object v0, v3, v7

    check-cast v0, Ljava/lang/String;

    .line 52
    invoke-static/range {p0 .. p1}, Lcom/alibaba/jsi/standard/JSEngine;->getInstance(J)Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/jsi/standard/JSEngine;->createContext(Ljava/lang/String;)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/alibaba/jsi/standard/JSContext;->getId()J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v4

    .line 46
    :pswitch_4
    invoke-static/range {p0 .. p1}, Lcom/alibaba/jsi/standard/JSEngine;->getInstance(J)Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alibaba/jsi/standard/JSEngine;->a(Z)V

    goto :goto_0

    :pswitch_5
    if-eqz v3, :cond_1

    .line 36
    array-length v0, v3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    aget-object v0, v3, v7

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    aget-object v0, v3, v6

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 38
    aget-object v0, v3, v7

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 39
    aget-object v0, v3, v6

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v14, 0x0

    const-string v10, ""

    const-string v11, ""

    move-wide v12, p0

    .line 40
    invoke-static/range {v7 .. v14}, Lcom/alibaba/jsi/standard/JSEngine;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Handler;)Lcom/alibaba/jsi/standard/JSEngine;

    goto :goto_0

    :pswitch_6
    cmp-long v0, v1, v4

    if-ltz v0, :cond_1

    .line 28
    invoke-static/range {p0 .. p1}, Lcom/alibaba/jsi/standard/JSEngine;->getInstance(J)Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/jsi/standard/JSEngine;->a(J)V

    :cond_1
    :goto_0
    return-wide v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
