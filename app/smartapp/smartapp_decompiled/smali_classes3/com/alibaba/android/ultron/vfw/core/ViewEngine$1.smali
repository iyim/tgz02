.class Lcom/alibaba/android/ultron/vfw/core/ViewEngine$1;
.super Ljava/lang/Object;
.source "ViewEngine.java"

# interfaces
.implements Lcom/taobao/android/ultron/common/utils/UnifyLog$LogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->initDebug(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

.field final synthetic val$moduleName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$1;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$1;->val$moduleName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 196
    new-instance p1, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;

    invoke-direct {p1}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;-><init>()V

    const-string v0, "logData"

    .line 197
    invoke-virtual {p1, v0, p2}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 199
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$1;->val$moduleName:Ljava/lang/String;

    invoke-static {p2}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object p2

    const-string v0, "STATUS_LOG_PRINT"

    .line 200
    invoke-interface {p2, v0, p1}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;->sendStatusEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
