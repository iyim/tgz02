.class Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$3;
.super Lcom/alibaba/jsi/standard/js/JSCallback;
.source "UltronJSIEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->addConsoleLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$3;->this$0:Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;

    invoke-direct {p0}, Lcom/alibaba/jsi/standard/js/JSCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallFunction(Lcom/alibaba/jsi/standard/js/Arguments;)Lcom/alibaba/jsi/standard/js/JSValue;
    .locals 6

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p1, v0}, Lcom/alibaba/jsi/standard/js/Arguments;->get(I)Lcom/alibaba/jsi/standard/js/JSValue;

    move-result-object v1

    .line 235
    invoke-virtual {p1}, Lcom/alibaba/jsi/standard/js/Arguments;->getContext()Lcom/alibaba/jsi/standard/JSContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/jsi/standard/js/JSValue;->toString(Lcom/alibaba/jsi/standard/JSContext;)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-virtual {v1}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    if-nez v2, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "UltronJSIEngine"

    .line 238
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 239
    new-array v1, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "console.log: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 240
    invoke-super {p0, p1}, Lcom/alibaba/jsi/standard/js/JSCallback;->onCallFunction(Lcom/alibaba/jsi/standard/js/Arguments;)Lcom/alibaba/jsi/standard/js/JSValue;

    move-result-object p1

    return-object p1
.end method
