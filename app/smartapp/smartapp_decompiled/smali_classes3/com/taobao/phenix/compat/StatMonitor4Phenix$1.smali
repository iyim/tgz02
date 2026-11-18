.class final Lcom/taobao/phenix/compat/StatMonitor4Phenix$1;
.super Ljava/lang/Object;
.source "StatMonitor4Phenix.java"

# interfaces
.implements Lcom/alibaba/motu/crashreporter/IUTCrashCaughtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/phenix/compat/StatMonitor4Phenix;->setupFlowMonitor(Landroid/content/Context;Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrashCaught(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-static {}, Lcom/taobao/phenix/compat/StatMonitor4Phenix;->access$200()Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/phenix/compat/StatMonitor4Phenix$StatImageDecodingListener;->getLatestDecodingUrlText()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "StatMonitor4Phenix"

    if-nez p1, :cond_0

    .line 142
    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "crash happened, collect latest decoding failed"

    invoke-static {v0, p2, p1}, Lcom/taobao/phenix/common/UnitedLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 145
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "PHENIX_LATEST_DECODING"

    .line 146
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 147
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, p2

    const-string p1, "crash happened, collect latest decoding urls=%s"

    invoke-static {v0, p1, v2}, Lcom/taobao/phenix/common/UnitedLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method
