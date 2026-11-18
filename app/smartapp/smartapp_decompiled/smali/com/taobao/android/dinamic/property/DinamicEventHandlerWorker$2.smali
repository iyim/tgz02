.class Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker$2;
.super Ljava/lang/Object;
.source "DinamicEventHandlerWorker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker;->bindEventOld(Landroid/view/View;Lcom/taobao/android/dinamic/model/DinamicParams;Lcom/taobao/android/dinamic/property/DinamicProperty;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker;

.field final synthetic val$dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

.field final synthetic val$handler:Lcom/taobao/android/dinamic/dinamic/DinamicEventHandler;

.field final synthetic val$param:Ljava/lang/Object;

.field final synthetic val$property:Lcom/taobao/android/dinamic/property/DinamicProperty;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker;Lcom/taobao/android/dinamic/dinamic/DinamicEventHandler;Lcom/taobao/android/dinamic/model/DinamicParams;Ljava/lang/Object;Lcom/taobao/android/dinamic/property/DinamicProperty;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker$2;->this$0:Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker;

    iput-object p2, p0, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker$2;->val$handler:Lcom/taobao/android/dinamic/dinamic/DinamicEventHandler;

    iput-object p3, p0, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker$2;->val$dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    iput-object p4, p0, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker$2;->val$param:Ljava/lang/Object;

    iput-object p5, p0, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker$2;->val$property:Lcom/taobao/android/dinamic/property/DinamicProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9

    .line 128
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker$2;->val$handler:Lcom/taobao/android/dinamic/dinamic/DinamicEventHandler;

    iget-object v4, p0, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker$2;->val$dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    invoke-virtual {v4}, Lcom/taobao/android/dinamic/model/DinamicParams;->getModule()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker$2;->val$param:Ljava/lang/Object;

    iget-object v4, p0, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker$2;->val$dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    .line 131
    invoke-virtual {v4}, Lcom/taobao/android/dinamic/model/DinamicParams;->getOriginalData()Ljava/lang/Object;

    move-result-object v7

    iget-object v4, p0, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker$2;->val$dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    .line 132
    invoke-virtual {v4}, Lcom/taobao/android/dinamic/model/DinamicParams;->getDinamicContext()Ljava/lang/Object;

    move-result-object v8

    move-object v4, p1

    .line 130
    invoke-interface/range {v3 .. v8}, Lcom/taobao/android/dinamic/dinamic/DinamicEventHandler;->handleEvent(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    iget-object p1, p0, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker$2;->val$dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/model/DinamicParams;->getModule()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker$2;->val$property:Lcom/taobao/android/dinamic/property/DinamicProperty;

    iget-object v3, v3, Lcom/taobao/android/dinamic/property/DinamicProperty;->viewIdentify:Ljava/lang/String;

    .line 134
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 133
    invoke-static {p1, v3, v4, v5}, Lcom/taobao/android/dinamic/log/DinamicLog;->logHandleEvent(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    iget-object v3, p0, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker$2;->val$dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    invoke-virtual {v3}, Lcom/taobao/android/dinamic/model/DinamicParams;->getViewResult()Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker$2;->val$property:Lcom/taobao/android/dinamic/property/DinamicProperty;

    iget-object v4, v4, Lcom/taobao/android/dinamic/property/DinamicProperty;->viewIdentify:Ljava/lang/String;

    const-string v5, "eventHandlerException"

    .line 137
    invoke-virtual {v3, v5, v4}, Lcom/taobao/android/dinamic/view/DinamicError;->addErrorCodeWithInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 141
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "handle onlongclick event failed, handler="

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker$2;->val$handler:Lcom/taobao/android/dinamic/dinamic/DinamicEventHandler;

    .line 143
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "DinamicEventHandler"

    .line 141
    invoke-static {v4, p1, v3}, Lcom/taobao/android/dinamic/log/DinamicLog;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker$2;->val$dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/model/DinamicParams;->getModule()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker$2;->val$property:Lcom/taobao/android/dinamic/property/DinamicProperty;

    iget-object v3, v3, Lcom/taobao/android/dinamic/property/DinamicProperty;->viewIdentify:Ljava/lang/String;

    .line 145
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 144
    invoke-static {p1, v3, v4, v5}, Lcom/taobao/android/dinamic/log/DinamicLog;->logHandleEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return v2
.end method
