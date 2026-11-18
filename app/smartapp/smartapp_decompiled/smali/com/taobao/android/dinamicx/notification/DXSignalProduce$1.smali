.class Lcom/taobao/android/dinamicx/notification/DXSignalProduce$1;
.super Ljava/lang/Object;
.source "DXSignalProduce.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->startProduce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/notification/DXSignalProduce;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/notification/DXSignalProduce;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce$1;->this$0:Lcom/taobao/android/dinamicx/notification/DXSignalProduce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce$1;->this$0:Lcom/taobao/android/dinamicx/notification/DXSignalProduce;

    invoke-static {v0}, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->access$200(Lcom/taobao/android/dinamicx/notification/DXSignalProduce;)V

    .line 50
    iget-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce$1;->this$0:Lcom/taobao/android/dinamicx/notification/DXSignalProduce;

    invoke-static {v0}, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->access$300(Lcom/taobao/android/dinamicx/notification/DXSignalProduce;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    iget-object v1, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce$1;->this$0:Lcom/taobao/android/dinamicx/notification/DXSignalProduce;

    iget v1, v1, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->trackerCount:I

    iget-object v2, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce$1;->this$0:Lcom/taobao/android/dinamicx/notification/DXSignalProduce;

    invoke-static {v2}, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->access$400(Lcom/taobao/android/dinamicx/notification/DXSignalProduce;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 53
    new-instance v1, Lcom/taobao/android/dinamicx/DXError;

    const-string v2, "dinamicx"

    invoke-direct {v1, v2}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v3, 0x1adb1

    const-string v4, "Signal"

    const-string v5, "Signal_Exception"

    invoke-direct {v2, v4, v5, v3}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    invoke-static {v0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 57
    iget-object v0, v1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-static {v1}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    .line 59
    iget-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce$1;->this$0:Lcom/taobao/android/dinamicx/notification/DXSignalProduce;

    iget v1, v0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->trackerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/android/dinamicx/notification/DXSignalProduce;->trackerCount:I

    :cond_0
    :goto_0
    return-void
.end method
