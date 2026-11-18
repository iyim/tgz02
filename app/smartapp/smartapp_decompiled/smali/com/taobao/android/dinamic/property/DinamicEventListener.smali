.class public Lcom/taobao/android/dinamic/property/DinamicEventListener;
.super Ljava/lang/Object;
.source "DinamicEventListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

.field private eventExp:Ljava/lang/String;

.field private property:Lcom/taobao/android/dinamic/property/DinamicProperty;


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamic/model/DinamicParams;Ljava/lang/String;Lcom/taobao/android/dinamic/property/DinamicProperty;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    .line 41
    iput-object p2, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->eventExp:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->property:Lcom/taobao/android/dinamic/property/DinamicProperty;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 48
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    sget v3, Lcom/taobao/android/dinamic/DinamicTagKey;->SUBDATA:I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/android/dinamic/model/DinamicParams;->setCurrentData(Ljava/lang/Object;)V

    .line 51
    iget-object v2, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->eventExp:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    invoke-static {p1, v2, v3}, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->handleEvent(Landroid/view/View;Ljava/lang/String;Lcom/taobao/android/dinamic/model/DinamicParams;)V

    .line 52
    iget-object p1, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/model/DinamicParams;->getModule()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->property:Lcom/taobao/android/dinamic/property/DinamicProperty;

    iget-object v2, v2, Lcom/taobao/android/dinamic/property/DinamicProperty;->viewIdentify:Ljava/lang/String;

    .line 53
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 52
    invoke-static {p1, v2, v3, v4}, Lcom/taobao/android/dinamic/log/DinamicLog;->logHandleEvent(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    iget-object p1, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/model/DinamicParams;->getViewResult()Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object p1

    iget-object v2, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->property:Lcom/taobao/android/dinamic/property/DinamicProperty;

    iget-object v2, v2, Lcom/taobao/android/dinamic/property/DinamicProperty;->viewIdentify:Ljava/lang/String;

    const-string v3, "eventHandlerException"

    .line 56
    invoke-virtual {p1, v3, v2}, Lcom/taobao/android/dinamic/view/DinamicError;->addErrorCodeWithInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/model/DinamicParams;->getModule()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->property:Lcom/taobao/android/dinamic/property/DinamicProperty;

    iget-object v2, v2, Lcom/taobao/android/dinamic/property/DinamicProperty;->viewIdentify:Ljava/lang/String;

    .line 61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 60
    invoke-static {p1, v2, v3, v4}, Lcom/taobao/android/dinamic/log/DinamicLog;->logHandleEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 20
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    sget v3, Lcom/taobao/android/dinamic/DinamicTagKey;->SUBDATA:I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/android/dinamic/model/DinamicParams;->setCurrentData(Ljava/lang/Object;)V

    .line 23
    iget-object v2, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->eventExp:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    invoke-static {p1, v2, v3}, Lcom/taobao/android/dinamic/expressionv2/ExpressionProcessor;->handleEvent(Landroid/view/View;Ljava/lang/String;Lcom/taobao/android/dinamic/model/DinamicParams;)V

    .line 24
    iget-object p1, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/model/DinamicParams;->getModule()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->property:Lcom/taobao/android/dinamic/property/DinamicProperty;

    iget-object v2, v2, Lcom/taobao/android/dinamic/property/DinamicProperty;->viewIdentify:Ljava/lang/String;

    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 24
    invoke-static {p1, v2, v3, v4}, Lcom/taobao/android/dinamic/log/DinamicLog;->logHandleEvent(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    :catch_0
    iget-object p1, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/model/DinamicParams;->getViewResult()Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object p1

    iget-object v2, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->property:Lcom/taobao/android/dinamic/property/DinamicProperty;

    iget-object v2, v2, Lcom/taobao/android/dinamic/property/DinamicProperty;->viewIdentify:Ljava/lang/String;

    const-string v3, "eventHandlerException"

    .line 28
    invoke-virtual {p1, v3, v2}, Lcom/taobao/android/dinamic/view/DinamicError;->addErrorCodeWithInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->dinamicParams:Lcom/taobao/android/dinamic/model/DinamicParams;

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/model/DinamicParams;->getModule()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/taobao/android/dinamic/property/DinamicEventListener;->property:Lcom/taobao/android/dinamic/property/DinamicProperty;

    iget-object v2, v2, Lcom/taobao/android/dinamic/property/DinamicProperty;->viewIdentify:Ljava/lang/String;

    .line 33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 32
    invoke-static {p1, v2, v3, v4}, Lcom/taobao/android/dinamic/log/DinamicLog;->logHandleEvent(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
